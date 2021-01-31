public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
    if (reverseString(word).equals(cleanString(word))) {
      return true;
    }
    else {
      return false;
    }
}
public String reverseString(String str)
{
    String sNew = new String();
    str = cleanString(str);
    for (int i = str.length(); i > 0; i--) {
      sNew += str.substring(i-1, i);
    }
    return sNew;
}

public String cleanString(String str) {
    String newS = "";
    for (int i = 0; i < str.length(); i++) {
      if((str.charAt(i) != ' ') && (Character.isLetter(str.charAt(i)))){
        newS += str.substring(i, i+1);
      }
    }
    newS = newS.toLowerCase();
    
    return newS;
}
