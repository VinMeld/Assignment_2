//Displaying the given exercise.

class Exercise12 {
  // Michael Lam & Vinay Meldrum
  // May 4, 2018
  // This program loads a text file and displays its characteristics, such as its character count

  // Declaring variables
  String[] sentence;
  String txt;
  int decider, numberOfCapital, numberOfVowels, maxLetters, punctuationCount, amountOfWords, index;

  // Loading files
  String ot[];
  String illiad[];
  String romeo[];
  String the[];
  String hamlet[];
  String macbeth[];

  // Initial setup
  void setup() {
    background(0);
    println("1setup");
    ot = loadStrings("othello.txt");
    println("2setup");
    illiad = loadStrings("illiad.txt");
    romeo = loadStrings("romeoAndJuliet.txt");
    the = loadStrings("theOdyssey.txt");
    hamlet = loadStrings("hamlet.txt");
    macbeth = loadStrings("macbeth.txt");
    selectFile();
    lengthOfText();
    capitalLetters();
    vowels();
    wordCount();
    punctuation();
    mostUsedLetter();
  }

  // Not used in program
  void draw() {
    noLoop();
  }

  // Randomly selects a file
  void selectFile() {
    println("SelectFile");
    decider = (int)random(0, 5);
    if (decider == 0) {
      sentence = ot;
      txt = join(sentence, "\n");
      text("File opened: othello.txt", 200, 150);
    } else if (decider == 1) {
      sentence = illiad;
      txt = join(sentence, "\n");
      text("File opened: illiad.txt", 200, 150);
    } else if (decider == 2) {
      sentence = romeo;
      txt = join(sentence, "\n");
      text("File opened: romeoAndJuliet.txt", 200, 150);
    } else if (decider == 3) {
      sentence = the;
      txt = join(sentence, "\n");
      text("File opened: theOdyssey.txt", 200, 150);
    } else if (decider == 4) {
      sentence = hamlet;
      txt = join(sentence, "\n");
      text("File opened: hamlet.txt", 200, 150);
    } else {
      sentence = macbeth;
      txt = join(sentence, "\n");
      text("File opened: macbeth.txt", 200, 150);
    }
  }

  // Determines character count of text file
  void lengthOfText() {
    println("Length");

    text("Length of text file: " + txt.length() + " characters", 200, 200);
  }

  // Determines the amount of capital characters
  void capitalLetters() {
    //Looping over the length of the string.
    for (int i = 0; i < txt.length(); i++) {
      //Making the string a character. char means character.
      //So, it will become c will become the character based off of how far you
      //are in the loop cause of the charAt(i).
      char c = txt.charAt(i);
      //This is the real code, checking if it is between A and Z. Then adding
      //1 to the count. EZPZ.
      if (c >= 'A' && c <= 'Z') {
        numberOfCapital++;
      }
    }
    text("Number of capital letters: " + numberOfCapital, 200, 250);
  }

  // Determines the amount of vowels
  void vowels() {
    println("Vowel");

    for (int i = 0; i < txt.length(); i++) {
      char c = txt.charAt(i);
      if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U') {
        numberOfVowels++;
      }
    }
    text("Number of vowels: " + numberOfVowels, 200, 300);
  }

  // Determines the amount of words
  void wordCount() {
    println("Wordcount");
    println(txt.length());
    String[] list = split(txt, ' ');
    amountOfWords = list.length;
    text("Number of words: " + amountOfWords, 200, 350);
  }

  // Determines the amount of punctuation marks
  void punctuation() {
    for (int i = 0; i < txt.length(); i++) {
      char c = txt.charAt(i);
      if (c == '\'' || c == ':' || c ==  ';' || c == '.' || c == ',' || c == '!' || c == '?') {
        punctuationCount++;
      }
    }
    text("Number of punctuation marks: " + punctuationCount, 200, 400);
    println("Number of punctuation marks: " + punctuationCount);
  }

  // Determines the most frequently occuring letter
  void mostUsedLetter() {
    char mostOccuringLetter = ' ';
    println("MostUsedLetter");

    //Lowercase
    char[] lowercaseArray = txt.toLowerCase().toCharArray();
    int[] allLetters = new int [26];
    for (int i = 0; i < lowercaseArray.length; i++) {
      //Making sure it is a letter
      if (lowercaseArray[i] >= 'a' && lowercaseArray[i] <='z') {
        //ASCII value. Subtract a from anything and you get the correct index. a - b = 1. a - a = 0.
        allLetters[lowercaseArray[i]-'a']++;
      }
    } //maxLetters, index
    for (int i = 0; i < allLetters.length; i++) {
      if (allLetters[i] > maxLetters) {
        maxLetters = allLetters[i];
        index = i;
      }
      mostOccuringLetter = char('a' + index);
    }
    text("Most occuring letter: " + mostOccuringLetter + " has occured " + maxLetters + " times.", 100, 450);
    println("Most occuring letter: " + mostOccuringLetter + " has occured " + maxLetters + " times.");
  }
}