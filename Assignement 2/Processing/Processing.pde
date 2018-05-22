User[] listOfUsers = new User[4];  //<>//
Buttons[] button = new Buttons[17];
User selectedUser = null;
int screenDecider = 0;
int thisUser;
String[] userList = {"", "Marie", "John", "Bertha"};
boolean loggedIn;
boolean userNameEntered;
String userInputName = "";
String userInputPassword = "";
void settings() {
  size(600, 600);
}

void setup() {
  button[0] = new Buttons(150, 250, 100, "A Super", 18);
  button[1] = new Buttons(350, 250, 100, "B Super", 18);
  button[2] = new Buttons(250, 250, 100, "A Main", 18);
  button[3] = new Buttons(0, 0, 100, "Exercise 1", 18);
  button[4] = new Buttons(0, 100, 100, "Exercise 2", 18);
  button[5] = new Buttons(0, 200, 100, "Exercise 3", 18);
  button[6] = new Buttons(0, 300, 100, "Exercise 4", 18);
  button[7] = new Buttons(0, 400, 100, "Exercise 5", 18);
  button[8] = new Buttons(0, 500, 100, "Exercise 6", 18);
  button[9] = new Buttons(100, 0, 100, "Exercise 7", 18);
  button[10] = new Buttons(150, 250, 100, "B Main", 18);
  button[11] = new Buttons(0, 100, 100, "Exercise_8", 18);
  button[12] = new Buttons(0, 200, 100, "Exercise_9", 18);
  button[13] = new Buttons(0, 300, 100, "Exercise_10", 18);
  button[14] = new Buttons(0, 400, 100, "Exercise_11", 18);
  button[15] = new Buttons(0, 500, 100, "Exercise_12", 18);
  button[16] = new Buttons(0, 500, 100, "Back", 18);

  listOfUsers[0] = new User(userList[0], "de", 2);
  listOfUsers[1] = new User(userList[1], "ab", 12);
  listOfUsers[2] = new User(userList[2], "tri", 4);
  listOfUsers[3] = new User(userList[3], "super", 1);
}

void draw() {
  background(0);
  if (loggedIn) {
    superior();
    userA();
    userB();
    whichUser();
  } else {
    drawLogin();
  }
}
void drawLogin() {
  noFill();
  stroke(255);
  if (userNameEntered) {
    rect(305, 280, 200, 25);
    text("Password " + userInputPassword, 250, 300);
    rect(295, 230, 200, 25);
    text("Login      " + userInputName, 250, 250);
  } else {
    rect(295, 230, 200, 25);
    text("Login      " + userInputName, 250, 250);
  }
}
void keyPressed() {
  if (!loggedIn) {
    if (!userNameEntered) {
      if (key == RETURN || key == ENTER) {
        for (int i = 0; i < listOfUsers.length; i++) {
          if (listOfUsers[i].matchUsername(userInputName)) {
            userNameEntered = true;
            selectedUser = listOfUsers[i];
            break;
          }
        }
      } else {
        if (key==BACKSPACE) {
          userInputName = userInputName.substring(0, max(0, userInputName.length()-2));
        } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
          userInputName +=key;
        }
      }
    } else {
      if (key == RETURN || key == ENTER) {
        if (selectedUser.comparePassword(userInputPassword, userInputName)) {
          println("Logged in");
          loggedIn = true;
          for (int i = 0; i < listOfUsers.length; i++) {
            listOfUsers[i].deletePasswords();
          }
          screenDecider = selectedUser.getNextScreen();
        }
      } else {
        if (key==BACKSPACE) {
          userInputPassword = userInputPassword.substring(0, max(0, userInputPassword.length()-2));
        } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
          userInputPassword += key;
        }
      }
    }
  }
}
// Button 0  = User A superior
// Button 1 = User B Superior
// Button 2 = User A Main
// Button 3 = Exercise_1
// Button 4 = Exercise_2
// Button 5 = Exercise_3
// Button 6 = Exercise_4
// Button 7 = Exercise_5
// Button 8 = Exercise_6
// Button 9 = Exercise_7
// Button 10 = User B Main
// Button 11 = Exercise_8
// Button 12 = Exercise_9
// Button 13 = Exercise_10
// Button 14 = Exercise_11
// Button 15 = Exercise_12
// Button 16 = Back

//---------------------------------------------


// Screen decider 1 = Superior
// SD2 = User A superior
// SD3 - 11 = Set A exercises
// SD12 = Displays Exercise Set B list.
// SD13 - 18 = Set B exercises
// SD19 = User B main

void mousePressed() {
  if (button[0].press() == true) {
    button[0].removeButton();
    button[1].removeButton();
    screenDecider = 4;
  } else if (button[1].press() == true) {
    button[0].removeButton();
    button[1].removeButton();
    screenDecider = 12;
  } else if (button[2].press() == true) {
    button[2].removeButton();
    screenDecider = 4;
  } else if (button[3].press() == true) {
    removeExerciseAButtons();
    screenDecider = 5;
  } else if (button[4].press() == true) {
    removeExerciseAButtons();
    screenDecider = 6;
  } else if (button[5].press() == true) {
    removeExerciseAButtons();
    screenDecider = 7;
  } else if (button[6].press() == true) {
    removeExerciseAButtons();
    screenDecider = 8;
  } else if (button[7].press() == true) {
    removeExerciseAButtons();
    screenDecider = 9;
  } else if (button[8].press() == true) {
    removeExerciseAButtons();
    screenDecider = 10;
  } else if (button[9].press() == true) {
    removeExerciseAButtons();
    screenDecider = 11;
    //SET B --------------------------------------------------------------------
  } else if (button[10].press() == true) {
    button[10].removeButton();
    screenDecider = 12;
  } else if (button[11].press() == true) {
    removeExerciseBButtons();
    screenDecider = 13;
  } else if (button[12].press() == true) {
    removeExerciseBButtons();
    screenDecider = 14;
  } else if (button[13].press() == true) {
    removeExerciseBButtons();
    screenDecider = 15;
  } else if (button[14].press() == true) {
    removeExerciseBButtons();
    screenDecider = 16;
  } else if (button[15].press() == true) {
    removeExerciseBButtons();
    screenDecider = 17;
  } else if  (button[16].press() == true) {
    button[16].removeButton();
    screenDecider = listOfUsers[thisUser].getNextScreen();
    println(screenDecider);
  }
}
void whichUser() {
  for (int i = 0; i < listOfUsers.length; i++) {
    if (userInputName.equals(userList[i])) {
      thisUser = i;
    }
  }
}
void removeExerciseAButtons() {
  button[3].removeButton();
  button[4].removeButton();
  button[5].removeButton();
  button[6].removeButton();
  button[7].removeButton();
  button[8].removeButton();
  button[9].removeButton();
}

void removeExerciseBButtons() {
  button[10].removeButton();
  button[11].removeButton();
  button[12].removeButton();
  button[13].removeButton();
  button[14].removeButton();
  button[15].removeButton();
}

void superior() {
  if (screenDecider == 1) {
    button[0].draw();
    button[1].draw();
  }
}
void userB() {
  if (screenDecider == 3) {
    button[1].draw();
  }
  if (screenDecider == 19) {
    button[10].draw();
  }
  if (screenDecider == 12) {
    button[11].draw();
    button[12].draw();
    button[13].draw();
    button[14].draw();
    button[15].draw();
  } else if (screenDecider == 13) {
    //Exercise_8
    println(screenDecider);

    println("Exercise_8");
    button[16].draw();
  } else if (screenDecider == 14) {
    //run Exercise_9
    println("Exercise_9");
    println(screenDecider);

    button[16].draw();
  } else if (screenDecider == 15) {
    //run Exercise_10
    println("Exercise_10");
    println(screenDecider);

    button[16].draw();
  } else if (screenDecider == 16) {
    //run Exercise_11
    println("Exercise_11");
    println(screenDecider);

    button[16].draw();
  } else if (screenDecider == 17) {
    //run Exercise_12
    println("Exercise_12");
    println(screenDecider);

    button[16].draw();
  }
}

void userA() {
  if (screenDecider == 2) {
    button[2].draw();
  }
  if (screenDecider == 4) {
    button[3].draw();
    button[4].draw();
    button[5].draw();
    button[6].draw();
    button[7].draw();
    button[8].draw();
    button[9].draw();
  }
  if (screenDecider == 5) {
    //run Exercise_1
      strokeWeight(0);
      //Top
      fill (119, 176, 245);
      rect(0, 0, 800, 300);

      //Sun
      fill(252, 245, 0);
      ellipse(200, 300, 150, 150 );  
      //Horizn line
      fill(28, 234, 92);
      rect(0, 300, 800, 300);
      //House rect
      fill(240, 97, 123);
      rect(550, 250, 150, 125);
      //Door
      fill(255, 255, 255);
      rect(612, 320, 35, 50);
      //Doorknob
      fill(0);
      ellipse(622, 348, 10, 10);
      //Triangle
      fill(0);
      triangle(625, 225, 545, 250, 705, 250);
      //Sun ray 1 on left.
      stroke(252, 245, 0);
      strokeWeight(3);
      line(90, 280, 200, 280);
      line(90, 280-30, 200, 280);
      line(90, 280-60, 200, 280);
      line(90+10, 280-90, 200, 280);
      line(90+40, 280-100, 200, 280);
      line(90+80, 280-120, 200, 280);
      line(90+120, 280-120, 200, 280);
      line(90+140, 280-160, 200, 280);
      /*line(90,280-160,200,280);
       line(90,280-180,200,280);
       line(90,280-220,200,280);
       line(90,280-240,200,280);*/
    
    println("Exercise_1");
    println(screenDecider);
    button[16].draw();
  }
  if (screenDecider == 6) {
    //run Exercise_2
    println("Exercise_2");
    println(screenDecider);

    button[16].draw();
  }
  if (screenDecider == 7) {
    //run Exercise_3
    println("Exercise_3");
    println(screenDecider);

    button[16].draw();
  }
  if (screenDecider == 8) {
    //run Exercise_4
    println("Exercise_4");
    println(screenDecider);

    button[16].draw();
  }
  if (screenDecider == 9) {
    //run Exercise_5
    println("Exercise_5");
    println(screenDecider);

    button[16].draw();
  }
  if (screenDecider == 10) {
    //run Exercise_6
    println("Exercise_6");
    println(screenDecider);

    button[16].draw();
  }
  if (screenDecider == 11) {
    //run Exercise_7
    println("Exercise_7");
    println(screenDecider);

    button[16].draw();
  }
}
