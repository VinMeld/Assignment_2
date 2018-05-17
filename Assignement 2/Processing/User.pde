class User {
  String username = "";
  String password = "";
  String listOfExercise ="A";
  int nextScreen;
  User(String tempUser, String tempPassword, int tempNextScreen) {
    nextScreen = tempNextScreen;
    username = tempUser;
    writeEncryptedPasswordToFile(encrpyt(tempPassword));
  }
  String encrpyt (String password) {
    String encryptedPassword = "";
    for (int i = 0; i < password.length(); i++) {
      encryptedPassword += char(password.charAt(i)-3);
    }
    println(encryptedPassword);
    return encryptedPassword;
  }
  void writeEncryptedPasswordToFile(String password) {
    PrintWriter passwordsWriter;
    passwordsWriter = createWriter(username + ".txt");
    passwordsWriter.println(password);
    passwordsWriter.flush();
    passwordsWriter.close();
  }
  boolean comparePassword(String password, String username) {
    String[] readPassword = loadStrings(username + ".txt");
    return readPassword[0].equals(encrpyt(password));
  }
  boolean matchUsername(String username) {
    return this.username.equals(username);
  }
  int getNextScreen() {
    return nextScreen;
  }
  void deletePasswords(){
      File passwordFile = new File (dataPath(""), username + ".txt");
      passwordFile.delete();
  }
}