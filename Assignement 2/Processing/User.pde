class User {
  String username = "";
  String password = "";
  String listOfExercise ="A";
  int nextScreen;
  User(String tempUser, String tempPassword, int tempNextScreen) {
    nextScreen = tempNextScreen;
    username = tempUser;
    password = encrpyt(tempPassword);
  }
  String encrpyt (String password) {
    String encryptedPassword = "";
    for (int i = 0; i < password.length(); i++) {
      encryptedPassword += char(password.charAt(i)-3);
    }
    println(encryptedPassword);
    return encryptedPassword;
  }
  boolean comparePassword(String password) {
    return this.password.equals(encrpyt(password));
  }
  boolean matchUsername(String username) {
    return this.username.equals(username);
  }
  int getNextScreen() {
    return nextScreen;
  }
}