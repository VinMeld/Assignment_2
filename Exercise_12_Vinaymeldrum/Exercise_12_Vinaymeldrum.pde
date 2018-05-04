String[] sentence;
int decider;
String txt;
//String[] sentenceArray = new String[sentenceLength.length()];
int numberOfCapital, numberOfVowels, maxLetters, punctuationCount, amountOfWords, index;
void setup() {
  background(0);
  String ot[] = loadStrings("othello.txt");
  String illiad[] = loadStrings("illiad.txt");
  String romeo[] = loadStrings("romeoAndJuliet.txt");
  String the[] = loadStrings("theOdyssey.txt");
  String hamlet[] = loadStrings("hamlet.txt");
  String macbeth[] = loadStrings("macbeth.txt");
  decider = (int)random(0, 5);
  if (decider == 0) {
    sentence = ot;
    txt = join(sentence, "\n");
    text("File opened: othello.txt", 100, 150);
  } else if (decider == 1) {
    sentence = illiad;
    txt = join(sentence, "\n");
    text("File opened: illiad.txt", 100, 150);
  } else if (decider == 2) {
    sentence = romeo;
    txt = join(sentence, "\n");
    text("File opened: romeoAndJuliet.txt", 100, 150);
  } else if (decider == 3) {
    sentence = the;
    txt = join(sentence, "\n");
    text("File opened: theOdyssey.txt", 100, 150);
  } else if (decider == 4) {
    sentence = hamlet;
    txt = join(sentence, "\n");
    text("File opened: hamlet.txt", 100, 150);
  } else {
    sentence = macbeth;
    txt = join(sentence, "\n");
    text("File opened: macbeth.txt", 100, 150);
  }

  size(600, 600);
  lengthOfSentence();
  capitalLetters();
  vowels();
  wordCount();
  punctuation();
  mostUsedLetter();
}

void draw() {
  noLoop();
}

void lengthOfSentence() {
  text("Length of text file: " + txt.length() + " characters", 100, 200);
}

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
  text("Number of capital letters: " + numberOfCapital, 100, 250);
}

void vowels() {
  for (int i = 0; i < txt.length(); i++) {
    char c = txt.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U') {
      numberOfVowels++;
    }
  }
  text("Number of vowels: " + numberOfVowels, 100, 300);
}

void wordCount() {
  for (int i = 0; i < txt.length(); i++) {
    String[] list = split(txt, ' ');
    amountOfWords = list.length;
    text("Number of words: " + amountOfWords, 100, 350);
  }
}

void punctuation() {
  for (int i = 0; i < txt.length(); i++) {
    char c = txt.charAt(i);
    if (c == '\'' || c == ':' || c ==  ';' || c == '.' || c == ',' || c == '!' || c == '?') {
      punctuationCount++;
    }
    //text("Number of punctuation marks: " + punctuationCount, 100, 400);
    println("Number of punctuation marks: " + punctuationCount);
  }
}

void mostUsedLetter() {
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
    char mostOccuringLetter = char('a' + index);
    //text("Most occuring letter: " + mostOccuringLetter + " has occured " + maxLetters + " times.", 100, 450);
    text("Most occuring letter: " + mostOccuringLetter + " has occured " + maxLetters + " times.", 100, 450);
    println("Most occuring letter: " + mostOccuringLetter + " has occured " + maxLetters + " times.");
  }
}