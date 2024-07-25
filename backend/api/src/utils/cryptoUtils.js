import crypto from 'crypto';
import { promisify } from 'util';

const pbkdf2Async = promisify(crypto.pbkdf2);

export const createSalt = () => {
    return crypto.randomBytes(32).toString('hex');
}

export const createHash = async (password, salt) => {
    const hash = await pbkdf2Async(password, salt, 10000, 64, 'sha512');
    return hash.toString('hex');
}

export const validateHash = async (password, salt, hash) => {
    try {
        const result = await createHash(password, salt);
        console.log('Generated Hash:', result);
        console.log('Stored Hash:', hash);
        return result === hash;
    } catch (error) {
        console.error('Error validating hash:', error);
        return false;
    }
};



