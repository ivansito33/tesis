import {  validateHash } from '../utils/cryptoUtils.js';
import jsonwebtoken from 'jsonwebtoken';
import { validatePassword } from '../services/authService.js';
import { db } from '../db/database.js';
import { users } from '../db/schema.js';
import { eq } from 'drizzle-orm';
import { SECRET_KEY } from '../config/env.js';





export const register = async (req, res) => {
    try {
        const { username, email, password, password2 } = req.body;
        if (!username || !email || !password || !password2) {
            return res.status(400).json({ message: "Username, email, and passwords are required" });
        }
        if (password !== password2) {
            return res.status(400).json({ message: "Both passwords should match" });
        }

        // Generar salt y hash
        const salt = createSalt();
        const hash = await createHash(password, salt);

        // Debugging logs
        console.log("Generated password hash:", hash);
        console.log("Generated password salt:", salt);
        console.log("Username:", username);
        console.log("Email:", email);
        console.log("Password Hash:", hash);
        console.log("Salt:", salt);
        console.log("Registration Date:", new Date());

        if (!hash || !salt) {
            return res.status(500).json({ message: "Error generating password hash and salt" });
        }

        // Insertar usuario en la base de datos
        const created = await db.insert(users).values({
            username,
            email,
            passwordHash: hash,
            salt: salt,
            registrationDate: new Date(),
            role_id: 2 // Assuming a default role ID for new users
        }).returning();

        res.status(201).json({ created });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Internal server error" });
    }
};
// backend/src/controllers/authController.js

export const login = async (req, res) => {
    try {
        const { username, password } = req.body;

        if (!username || !password) {
            return res.status(400).json({ message: "Username and password are required" });
        }

        const user = await db.query.users.findFirst({
            where: eq(users.username, username)
        });
        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }

        const result = await validatePassword(password, user.salt, user.passwordHash);

        if (!result.valid) {
            return res.status(400).json({ message: "Incorrect password" });
        }

        const token = jsonwebtoken.sign(
            { userId: user.id, roleId: user.roleId },
            SECRET_KEY,
            { expiresIn: "1h" }
        );

        console.log('Generated Token:', token); // Imprime el token en la consola

        // Establecer la cookie HttpOnly
        res.cookie('session', token, {
            httpOnly: true,
            secure: false,
            sameSite: 'Strict',
            maxAge: 3600000 // 1 hora
        });

        // Redirigir basado en el rol del usuario
        let redirectTo = '/';
        if (user.roleId === 1) {
            redirectTo = '/admin'; // Redirige a la página de admin si el rol es 1
        }

        // Enviar respuesta de éxito con redirección y usuario
        res.status(200).json({ user, token, redirectTo });
    } catch (error) {
        console.error('Error during login:', error); // Imprime el error en la consola
        return res.status(500).json({ message: "Internal server error" });
    }
};

