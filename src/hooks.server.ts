// src/hooks.server.ts
import type { Handle } from '@sveltejs/kit';

export const handle: Handle = async ({ event, resolve }) => {
    const session = event.cookies.get('session');

    if (!session) {
        return await resolve(event);
    }

    try {
        const apiUrl = import.meta.env.VITE_API_URL;
        const response = await fetch(`${apiUrl}/auth/validate-token`, {
            method: 'GET',
            headers: {
                'Authorization': `Bearer ${session}`
            }
        });

        if (response.ok) {
            const user = await response.json();
            event.locals.user = {
                id: user.id,
                username: user.username,
                roleId: user.roleId
            };
        } else {
            console.error('Failed to fetch user data:', await response.text());
        }
    } catch (error) {
        console.error('Error fetching user data:', error);
    }

    return await resolve(event);
};
