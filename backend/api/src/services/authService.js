import { createHash, createSalt, validateHash } from '../utils/cryptoUtils.js';

export const generatePassword = async (password) => {
    const salt = createSalt();
    const hash = await createHash(password, salt);
    return { salt, hash };
}

export const validatePassword = async (password, salt, hash) => {
    const isValid = await validateHash(password, salt, hash);
    return { valid: isValid };
}


// Example usage:   
