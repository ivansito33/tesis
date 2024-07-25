import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ locals }) => {
    if (!locals.user) {
        throw redirect(302, '/');
    }
    if (locals.user.roleId !== 1) { // Asegúrate de que esta lógica sea correcta
        throw redirect(302, '/');
    }
};

