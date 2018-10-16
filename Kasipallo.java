/* Viikkoharjoitus 1, tehtävä 3. 
 * 
 * Lausekielinen ohjelmointi II, syksy 2016. 
 * Pia Rantanen, Rantanen.Pia.M@student.uta.fi 
 * 
 */

public class Kasipallo
{
   
	public static void main(String[] args)
	{
		//Kerrotaan ohjelmasta.
		System.out.println("Hello! I am a Magic 8 Ball. Ask me.");
     
		//Luetaan kayttajalta kysymys.
		System.out.println("Enter a question:");
		String kysymys = In.readString();
	 
		//Kutsu.
		annaVastaus();
	}
	
	//Luetaan kayttajalta kysymys ja tulostetaan satunnaisesti
	//jokin 20 vastauksesta.
	public static void annaVastaus()
	{
		int valinta = (int)(20 * Math.random()) + 1;
		
		String vastaus = " ";
		
		switch (valinta) {
		case 0: System.out.println("It is certain"); break;
		case 1: System.out.println("It is decidedly so"); break;
		case 2: System.out.println("Without a doubt"); break;
		case 3: System.out.println("Yes, definitely"); break;
		case 4: System.out.println("You may rely on it"); break;
		case 5: System.out.println("As I see it, yes"); break;
		case 6: System.out.println("Most likely"); break;
		case 7: System.out.println("Outlook good"); break;
		case 8: System.out.println("Yes"); break;
		case 9: System.out.println("Signs point to yes"); break;
		case 11: System.out.println("Reply hazy try again"); break;
		case 12: System.out.println("Ask again later"); break;
		case 13: System.out.println("Better not tell you now"); break;
		case 14: System.out.println("Cannot predict now"); break;
		case 15: System.out.println("Concentrate and ask again"); break;
		case 16: System.out.println("Dont count on it"); break;
		case 17: System.out.println("My reply is no"); break;
		case 18: System.out.println("My sources say no"); break;
		case 19: System.out.println("Outlook not so good"); break;
		case 20: System.out.println("Very doubtful"); break;
		
		}
    }
}
