import express from 'express';
import morgan from 'morgan';
import cookieParser from 'cookie-parser';
import authRoutes from './src/routes/authRoutes.js';
import { PORT } from './src/config/env.js';




const app = express();

// Middlewares
app.use(express.json());
app.use(morgan('dev'));
app.use(cookieParser());

// Rutas
app.use('/auth', authRoutes);

// Ruta de prueba
app.get('/', (req, res) => {
    res.send('Hello world!');
});

// Iniciar servidor
app.listen(PORT, () => {
    console.log(`Server listening on http://localhost:${PORT}`);
});
