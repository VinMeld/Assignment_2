class User {
  String username = "";
  String password = "";
  String listOfExercise ="A";
  int nextScreen;
  //Constructer for the user class. Deciding the username, the password and User A, User B or both.
  User(String tempUser, String tempPassword, int tempNextScreen) {
    nextScreen = tempNextScreen;
    username = tempUser;
    writeEncryptedPasswordToFile(encrpyt(tempPassword));
  }
  //Encrypting it. By changing the numbers by shifting them by 3 based off of their ascii value.
  String encrpyt (String password) {
    String encryptedPassword = "";
    for (int i = 0; i < password.length(); i++) {
      encryptedPassword += char(password.charAt(i)-3);
    }
    println(encryptedPassword);
    return encryptedPassword;
  }
  //This prints the encrypted the password onto a file. Creating a new one based off of the user. 
  void writeEncryptedPasswordToFile(String password) {
    PrintWriter passwordsWriter;
    passwordsWriter = createWriter(username + ".txt");
    passwordsWriter.println(password);
    passwordsWriter.flush();
    passwordsWriter.close();
  }
  //Reads the files to make sure that the passwords are right.
  boolean comparePassword(String password, String username) {
    String[] readPassword = loadStrings(username + ".txt");
    return readPassword[0].equals(encrpyt(password));
  }
  //Just seeing if the usernames match.
  boolean matchUsername(String username) {
    return this.username.equals(username);
  }
  //Gets the next screen.
  int getNextScreen() {
    return nextScreen;
  }
  //I was trying to delete the username and password text files after the programmed finished, but for some odd reason it didn't work, but I decided not to dwell on the matter as it was not required of me to figure out how it worked.
  void deletePasswords(){
      File passwordFile = new File (dataPath(""), username + ".txt");
      passwordFile.delete();
  }
}