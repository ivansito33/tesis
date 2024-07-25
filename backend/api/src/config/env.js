import dotenv from 'dotenv';
dotenv.config();

export const SECRET_KEY = process.env.SECRET_KEY;
export const CONNECTION_STRING = process.env.CONNECTION_STRING;
export const PORT = process.env.PORT || 3333;
