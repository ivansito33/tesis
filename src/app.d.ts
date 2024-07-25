// src/types/app.d.ts

// Tipo para representar un usuario, útil en otras partes de la aplicación
type User = { // Asegúrate de que este campo existe en la base de datos
    username: string;
    roleId: number; // Corregido de 'role' a 'role_id' para coincidir con tu uso
    password: string; // Asegúrate de no exponer el campo de contraseña en el cliente
}

declare global {
    namespace App {
        interface Locals {
            user?: { // Opcional, ya que puede no estar definido si el usuario no está autenticado
                id: number; // Agregar id
                username: string; // Agregar email
                roleId: number; // Agregar role
            };
        }
    }
}

export {};

export {};
