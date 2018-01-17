public void setup()
{
	String[] lines = loadStrings("LowellHymn.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0; i<lines.length; i++){
		int space = 0;
		for (int ii = 0; ii < lines[i].length(); ii++){
			char c = lines[i].charAt(ii);
			if (c == ' '){
				System.out.print(pigLatin(lines[i].substring(space, ii)) + " ");
				space = ii+1;
			}
			else if (ii == lines[i].length()-1)
				System.out.print(pigLatin(lines[i].substring(space)) + " ");
		}
		System.out.println();
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
	for (int i = 0; i < sWord.length(); i++){
		char c = sWord.charAt(i);
		if (c == 'a' || c == 'e' || c == 'e' || c == 'o' || c == 'u')
			return i;
	}
	return -1;
}

public String pigLatin(String word){
	//precondition: sWord is a valid String of length greater than 0
	if (word.length() == 0) return "";
	//postcondition: returns the pig latin equivalent of sWord
	String sWord = word.toLowerCase();
	//Parse commas and periods
	if (word.endsWith(".") || word.endsWith(",")){
		sWord = word.substring(0, word.length()-1).toLowerCase();
	}
	int vowel = findFirstVowel(sWord);
	String ret = "";

	if(vowel == -1)
	{
		ret = sWord + "ay";
	}
	else if (vowel == 0)
	{
		ret = sWord + "way";
	}
	else if (sWord.substring(0,2).equals("qu")){
		ret = sWord.substring(2) + "quay";
	}
	else {
		ret = sWord.substring(vowel) + sWord.substring(0, vowel) + "ay";
	}
	/*
	//Put uppercase back
	if (Character.isUpperCase(word.charAt(0))){
		ret = Character.toUpperCase(ret.charAt(0)) + ret.substring(1);
	}
	//Put comma or period back
		if (word.endsWith(".") || word.endsWith(",")){
			ret = ret + word.charAt(word.length()-1);
		}
	*/
	return sWord + vowel;
}
