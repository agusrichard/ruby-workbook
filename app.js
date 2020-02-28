const fibonacci = require('./src/fibonacci');
const dataPribadi = require('./src/arr');
const { isUsernameValid, isPasswordValid } = require('./src/validate');

console.log(fibonacci(5));
console.log(dataPribadi());
console.log(isUsernameValid('agusric'));
console.log(isPasswordValid('ThisIsAPassword!999'));