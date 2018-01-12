public void setup()
{
	String[] lines = loadStrings("LowellHymn.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0; i<lines.length; i++){
		int space = 0;
		for (int ii = 0; ii <= lines[i].length()-1; ii++){
			char c = lines[i].charAt(i);
			if (c == ' '){
				System.out.println((lines[i].substring(space, ii)));
				space = ii+1;
			}
			else if (ii == lines[i].length()-1)
				System.out.print(lines[i].substring(space));
		}
		//System.out.println();
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
	for (int i = 0; i < sWord.length(); i++){
		char c = sWord.charAt(i);
		if (c == 'a' || c == 'e' || c == 'e' || c == 'o' || c == 'u')
			return i;
	}
	return -1;
}

public String pigLatin(String sWord){
	//precondition: sWord is a valid String of length greater than 0
	if (sWord.length() == 0) return "";
	//postcondition: returns the pig latin equivalent of sWord
	int vowel = findFirstVowel(sWord);

	if(vowel == -1)
	{
		return sWord + "ay";
	}
	else if (vowel == 0)
	{
		return sWord + "way";
	}
	else if (sWord.substring(0,2).equals("qu")){
		return sWord.substring(2) + "quay";
	}
	else {
		return sWord.substring(vowel) + sWord.substring(0, vowel) + "ay";
	}
}
