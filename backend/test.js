import crypto from 'crypto';

const generatePassword = async (password) => {
    return new Promise((resolve, reject) => {
        const salt = crypto.randomBytes(32).toString('hex');
        crypto.pbkdf2(password, salt, 10000, 64, 'sha512', (err, key) => {
            if (err) reject(err);
            resolve({
                salt: salt,
                hash: key.toString('hex')
            });
        });
    });
}

const testPasswordGeneration = async () => {
    try {
        const password = 'testPassword123';
        const result = await generatePassword(password);
        console.log('Salt:', result.salt);
        console.log('Hash:', result.hash);
    } catch (error) {
        console.error('Error generating password:', error);
    }
}

testPasswordGeneration();
