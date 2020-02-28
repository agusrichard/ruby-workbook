function isUsernameValid(username) {
  const pattern = /^[a-z]{5,9}$/
  return username.search(pattern) ? false : true
}

function isPasswordValid(password) {
  const pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/
  return password.search(pattern) ? false : true
}

// console.log(isUsernameValid('agusric'));
// console.log(isPasswordValid('MyNameIsFunction321!'));

module.exports = { isUsernameValid, isPasswordValid };