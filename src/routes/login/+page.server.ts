// src/routes/login/+page.server.ts
import { redirect } from '@sveltejs/kit';
import type { Actions } from './$types';

export const actions: Actions = {
    default: async ({ request, fetch }) => {
        const formData = await request.formData();
        const username = formData.get('username') as string;
        const password = formData.get('password') as string;

        if (!username || !password) {
            return { error: 'All fields are required' };
        }

        const apiUrl = import.meta.env.VITE_API_URL;
        const response = await fetch(`${apiUrl}/auth/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ username, password }),
            credentials: 'include' // Asegura que las cookies sean enviadas y recibidas

        });

        if (!response.ok) {
            const error = await response.json();
            return { error: error.message };
        }
        console.log('Response:', response);


        const data = await response.json();
        console.log('API Response:', data); // Imprime la respuesta de la API para verificar

        const { redirectTo, token } = data;

        if (!token) {
            return { error: 'Token not received from API' };
        }

        return {
            status: 302,
            headers: {
                'Set-Cookie': `session=${token}; Path=/; HttpOnly; SameSite=Strict; Secure=${process.env.NODE_ENV === 'production'}`
            },
            redirect: redirectTo
        };
    }
};


