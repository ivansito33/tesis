// src/lib/server.ts
import type { RequestEvent } from "@sveltejs/kit";

export const authenticateUser = async (event: RequestEvent) => {
	const { cookies } = event;

	const token = cookies.get('session'); // El nombre de la cookie debe coincidir con el que usas en el backend

	if (!token) {
		return null;
	}

	try {
		const apiUrl = import.meta.env.VITE_API_URL;
		const response = await fetch(`${apiUrl}/auth/validate-token`, { // Un nuevo endpoint para validar tokens
			headers: {
				'Authorization': `Bearer ${token}`
			}
		});

		if (!response.ok) {
			return null;
		}

		const user = await response.json();
		return user;
	} catch (error) {
		console.error('Error validating token:', error);
		return null;
	}
};
