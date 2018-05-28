/*********************************************************************************************************************************************************************************************************************************************** //<>//
 Program by: Vinay Meldrum
 Date: June 1st 2018
 Purpose: To get a good mark and to display my knowledge of different functions indside of processing.
 *************************************************************************************************************************************************************************************************************************************************/
import processing.sound.*;
//Library for buttons
import interfascia.*;
//Declraing different instances of the classes.
User[] listOfUsers = new User[4]; 
Buttons[] button = new Buttons[17];
Exercise1 exercise1 = new Exercise1();
Exercise2 exercise2 = new Exercise2();
Exercise3 exercise3 = new Exercise3();
Exercise4 exercise4 = new Exercise4();
Exercise5 exercise5 = new Exercise5();
Exercise6 exercise6 = new Exercise6();
Exercise7 exercise7 = new Exercise7();
Exercise8 exercise8 = new Exercise8();
Exercise9 exercise9 = new Exercise9();
Exercise10 exercise10 = new Exercise10();
Exercise11 exercise11 = new Exercise11();
Exercise12 exercise12 = new Exercise12();
int lastScreenDecider= -99;
User selectedUser = null;
int screenDecider = 0;
int thisUser;
String[] userList = {"", "Marie", "John", "Bertha"};
boolean loggedIn;
boolean userNameEntered;
String userInputName = "";
String userInputPassword = "";
//Sound
SoundFile Wrong, Win, Lose;
void settings() {
  size(800, 800);
}

void setup() {
  //Declraing the different buttons. The first 2 integers are the x and y, 3rd size, 4th the text and lastly the size of the text inside the square.
  button[0] = new Buttons(150, 250, 100, "A Super", 18);
  button[1] = new Buttons(350, 250, 100, "B Super", 18);
  button[2] = new Buttons(250, 250, 100, "A Main", 18);
  button[3] = new Buttons(0, 1, 100, "Exercise 1", 18);
  button[4] = new Buttons(0, 100, 100, "Exercise 2", 18);
  button[5] = new Buttons(0, 200, 100, "Exercise 3", 18);
  button[6] = new Buttons(0, 300, 100, "Exercise 4", 18);
  button[7] = new Buttons(0, 400, 100, "Exercise 5", 18);
  button[8] = new Buttons(0, 500, 100, "Exercise 6", 18);
  button[9] = new Buttons(0, 600, 100, "Exercise 7", 18);
  button[10] = new Buttons(150, 250, 100, "B Main", 18);
  button[11] = new Buttons(0, 100, 100, "Exercise_8", 18);
  button[12] = new Buttons(0, 200, 100, "Exercise_9", 18);
  button[13] = new Buttons(0, 300, 100, "Exercise_10", 18);
  button[14] = new Buttons(0, 400, 100, "Exercise_11", 18);
  button[15] = new Buttons(0, 500, 100, "Exercise_12", 18);
  button[16] = new Buttons(700, 700, 100, "Back", 18);
  //Declaring the different users inside this program.
  listOfUsers[0] = new User(userList[0], "de", 2);
  listOfUsers[1] = new User(userList[1], "ab", 12);
  listOfUsers[2] = new User(userList[2], "tri", 2);
  listOfUsers[3] = new User(userList[3], "super", 1);
  //Different sound files that need to be declared here for exercise 8.
  Win = new SoundFile(this, "Win.mp3");
  Lose = new SoundFile(this, "Lose.mp3");
  Wrong = new SoundFile(this, "Wrong.mp3");
}

void draw() {
  //Doing the background 0 for only the exercises that need it.
  if (screenDecider != lastScreenDecider) {
    background(0);
  }
  strokeWeight(1);
  stroke(1);
  fill(255);
  //If you are logged in, then run the different functions.
  if (loggedIn) {
    superior();
    userA();
    userB();
    whichUser();
  } else {
    //If not, then do the login screen.
    drawLogin();
  }
}
void drawLogin() {
  noFill();
  stroke(255);
  //This is the lgin screen.
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
      //If you haven't entered your username, then you enter it and it checks whether it is true or not.
      if (key == RETURN || key == ENTER) {
        for (int i = 0; i < listOfUsers.length; i++) {
          if (listOfUsers[i].matchUsername(userInputName)) {
            userNameEntered = true;
            selectedUser = listOfUsers[i];
            break;
          }
        }
      } else {
        //Making it so you can use capitals and implemting a backspace.
        if (key==BACKSPACE) {
          userInputName = userInputName.substring(0, max(0, userInputName.length()-2));
        } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
          userInputName +=key;
        }
      }
    } else {
      //If you are logged in then run the password. If the password is true, then logged in is true. Also, getting the screendecider.
      if (key == RETURN || key == ENTER) {
        if (selectedUser.comparePassword(userInputPassword, userInputName)) {
          println("Logged in");
          loggedIn = true;
          for (int i = 0; i < listOfUsers.length; i++) {
            listOfUsers[i].deletePasswords();
          }
          setScreenDecider(selectedUser.getNextScreen());
        }
      } else {
        if (key==BACKSPACE) {
          //Making it so you can use capitals and implemting a backspace.
          userInputPassword = userInputPassword.substring(0, max(0, userInputPassword.length()-2));
        } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
          userInputPassword += key;
        }
      }
    }
  }
}
//This is just notes for me, so I can keep track of all the different buttons and screen deciders I have.
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
// SD4 - 11 = Set A exercises
// SD12 = Displays Exercise Set B list.
// SD13 - 18 = Set B exercises
// SD19 = User B main

void mousePressed() {
  //This is just checking if the user presses on the button, based off of that it removes buttons and sets the screen decider to something.
  if (button[0].press() == true) {
    button[0].removeButton();
    button[1].removeButton();
    setScreenDecider(4);
  } else if (button[1].press() == true) {
    button[0].removeButton();
    button[1].removeButton();
    setScreenDecider(12);
  } else if (button[2].press() == true) {
    button[2].removeButton();
    setScreenDecider(4);
  } else if (button[3].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(5);
  } else if (button[4].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(6);
  } else if (button[5].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(7);
  } else if (button[6].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(8);
  } else if (button[7].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(9);
  } else if (button[8].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(10);
  } else if (button[9].press() == true) {
    removeExerciseAButtons();
    setScreenDecider(11);
    //SET B --------------------------------------------------------------------
  } else if (button[10].press() == true) {
    button[10].removeButton();
    setScreenDecider(12);
  } else if (button[11].press() == true) {
    removeExerciseBButtons();
    setScreenDecider(13);
  } else if (button[12].press() == true) {
    removeExerciseBButtons();
    setScreenDecider(14);
  } else if (button[13].press() == true) {
    removeExerciseBButtons();
    setScreenDecider(15);
  } else if (button[14].press() == true) {
    removeExerciseBButtons();
    setScreenDecider(16);
  } else if (button[15].press() == true) {
    removeExerciseBButtons();
    setScreenDecider(17);
  } else if  (button[16].press() == true) {
    println(screenDecider);
    button[16].removeButton();
    setScreenDecider(listOfUsers[thisUser].getNextScreen());
    //Debugging:
    //println("This user " + thisUser);
    //println("List of users " + listOfUsers[thisUser].username);
    //println(screenDecider);
  }
}
void whichUser() {
  //Fidguring out what user it is for back button purposes.
  for (int i = 0; i < listOfUsers.length; i++) {
    if (userInputName.equals(userList[i])) {
      thisUser = i;
    }
  }
}
void removeExerciseAButtons() {
  //Removes exerciseAButtons
  button[3].removeButton();
  button[4].removeButton();
  button[5].removeButton();
  button[6].removeButton();
  button[7].removeButton();
  button[8].removeButton();
  button[9].removeButton();
}

void removeExerciseBButtons() {
  //Removes exerciseAButtons
  button[10].removeButton();
  button[11].removeButton();
  button[12].removeButton();
  button[13].removeButton();
  button[14].removeButton();
  button[15].removeButton();
}

void superior() {
  //Displays buttons that I need. 
  if (screenDecider == 1) {
    button[0].draw();
    button[1].draw();
  }
}
void userB() {
  //Displays buttons that I need. Aswell, it displays the desisired exercise. I wrapped all of the exercises as a seperate class and just ran them here.**************
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
    exercise8.draw();
    //println("Exercise_8");
    button[16].draw();
  } else if (screenDecider == 14) {
    //run Exercise_9
    exercise9.draw();
    println("Exercise_9");
    button[16].draw();
  } else if (screenDecider == 15) {
    //run Exercise_10
    //println("Exercise_10");
    if (hasScreenDeciderChanged()) {
      exercise10.setup();
    }
    exercise10.draw();
    button[16].draw();
  } else if (screenDecider == 16) {
    //run Exercise_11
    //  println("Exercise_11");
    exercise11.draw();

    button[16].draw();
  } else if (screenDecider == 17) {
    //run Exercise_12
    //  println("Exercise_12");
    exercise12.draw();
    button[16].draw();
  }
}

void userA() {
  //Displays buttons that I need. Aswell, it displays the desisired exercise. I wrapped all of the exercises as a seperate class and just ran them here.**************

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
  if (screenDecider == 5) {//***************************************************************************************************************************************** Exercise_1
    exercise1.draw();
    button[16].draw();
  }
  if (screenDecider == 6) {//**************************************************************************************************************************************** Exercise_2
    exercise2.draw();
    button[16].draw();
  }
  if (screenDecider == 7) {//******************************************************************************************************************************************** Exercise _3
    exercise3.draw();
    button[16].draw();
  }
  if (screenDecider == 8) {//******************************************************************************************************************************************** Exercise_4
    exercise4.draw();
    button[16].draw();
  }
  if (screenDecider == 9) {//****************************************************************************************************************************************** Exercise_5
    exercise5.draw();
    button[16].draw();
  }
  if (screenDecider == 10) {//**************************************************************************************************************************************************************** Exercise_6
    exercise6.draw();
    //run Exercise_6
    button[16].draw();
  }
  if (screenDecider == 11) {//*************************************************************************************************************************************************************** Exercise_7
    exercise7.draw();
    button[16].draw();
  }
}
void setScreenDecider(int newScreenDecider) {
  //Figuring out the last screendecider. So that I know how many times I need to run the background(0) command, because for some exercises I don't need a background(0) in draw.
  lastScreenDecider = screenDecider;
  screenDecider = newScreenDecider;
}
boolean hasScreenDeciderChanged() {
  //Figuring out how to draw the different exercises. So if the screenDecider variable changes then I can do other things with it.
  if (lastScreenDecider != screenDecider) {
    lastScreenDecider = screenDecider;
    return true;
  }
  return false;
}