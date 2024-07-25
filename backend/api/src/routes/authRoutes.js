// src/routes/authRoutes.js (o authRoutes.ts)
import express from 'express';
import { register, login,  } from '../controllers/authController.js'; // Asegúrate de tener la función `getUser`

const router = express.Router();

router.post('/register', register);
router.post('/login', login);


export default router;
