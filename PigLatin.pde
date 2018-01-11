public void setup()
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++)
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i = 0; i < sWord.length(); i++){
		char c = sWord.charAt(i);
		if (c == 'a' || c == 'e' || c == 'e' || c == 'o' || c == 'u')
			return i;
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
if (sWord.length() == 0) return "";
//postcondition: returns the pig latin equivalent of sWord
int vowel = findFirstVowel(sWord);
{
	if(vowel == -1)
	{
		return sWord + "ay";
	}
	else if (vowel == 0)
	{
		return sWord + "way"
	}
	else if (sWord.substring(0,2).equals('qu')){
		return sWord.substring(2) + 'quay'
	}
	else {
		return sWord.substring(vowel-1) + sWord.substring(0, vowel) + ay;
	}
}
