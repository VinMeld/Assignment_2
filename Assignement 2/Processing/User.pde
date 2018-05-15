class User {
  String username = "";
  int nextScreen;
  String passwordMarie = ("Password_Marie.txt");
  User(String tempUser, int tempNextScreen) {
    nextScreen = tempNextScreen;
    username = tempUser;
  }
  void encrpyt () {
    for (int i = 0; i < passwordMarie.length(); i++) {
      encryptedPassword += char(passwordMarie.charAt(i)-3);
    }
    println(encryptedPassword);
    return encryptedPassword;
  }
  boolean comparePassword(String password) {
    return this.passwordMarie.equals(encrpyt(password));
  }
  boolean matchUsername(String username) {
    return this.username.equals(username);
  }
  int getNextScreen() {
    return nextScreen;
  }
}
