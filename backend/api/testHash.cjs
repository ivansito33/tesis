const crypto = require('crypto');
const util = require('util');
const pbkdf2Async = util.promisify(crypto.pbkdf2);

const password = 'ivansito33';
const salt = '6e4a0be2e9e59dbea88452c97d8fde24f6b32a2cd68f71755dbc9316c8fc900c';
const storedHash = 'a119ed6396515d761a69315ff65667b8cc6d63ac14997855de29d2391e75d9b1e239f9d8ee524eaf68b07164f9424d4b9e05a02601d59e7b8b1ec84cc994d2a3';

const generateHash = async (password, salt) => {
    const hash = await pbkdf2Async(password, salt, 10000, 64, 'sha512');
    return hash.toString('hex');
}

const validateHash = async (password, salt, storedHash) => {
    const generatedHash = await generateHash(password, salt);
    console.log('Generated Hash:', generatedHash);
    console.log('Stored Hash:', storedHash);
    return generatedHash === storedHash;
}

validateHash(password, salt, storedHash).then(isValid => {
    console.log('Is valid:', isValid);
}).catch(error => {
    console.error('Error:', error);
});
