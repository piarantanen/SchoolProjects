/*
 * Viikkoharjoitus 1, tehtävä 3.
 *
 * Lausekielinen ohjelmointi II, syksy 2016.
 *
 * Pia Rantanen, Rantanen.Pia.M@student.uta.fi
 *
 */
 
 public class Kasipallo
 {
   //Luetaan kayttajalta kysymys ja tulostetaan satunnaisesti
   //jokin 20 vastauksesta.
   public static void annaVastaus()
   {
      
   }
   
   public static void main(String[] args)
   {   
     //Kerrotaan ohjelmasta.
     System.out.println("Hello! I am a Magic 8 Ball. Ask me.");
     
	  //Luetaan kayttajalta kysymys.
     System.out.println("Enter a question:");
     String kysymys = In.readString();
     String vastaus = " ";
     int valinta = (int)(19 * Math.random()) + 1;
     
     switch (valinta) { 
     case 0: vastaus = "It is certain"; break;
     case 1: vastaus = "It is decidedly so"; break;
     case 2: vastaus = "Without a doubt"; break;
     case 3: vastaus = "Yes, definitely"; break;
     case 4: vastaus ="You may rely on it"; break;
     case 5: vastaus = "As I see it, yes"; break;
     case 6: vastaus = "Most likely"; break;
     case 7: vastaus = "Outlook good"; break;
     case 8: vastaus = "Yes"; break;
     case 9: vastaus = "Signs point to yes"; break;
     case 11: vastaus = "Reply hazy try again"; break;
     case 12: vastaus = "Ask again later"; break;
     case 13: vastaus = "Better not tell you now"; break;
     case 14: vastaus = "Cannot predict now"; break;
     case 15: vastaus = "Concentrate and ask again"; break;
     case 16: vastaus = "Dont count on it"; break;
     case 17: vastaus = "My reply is no"; break;
     case 18: vastaus = "My sources say no"; break;
     case 19: vastaus = "Outlook not so good"; break;
     case 20: vastaus = "Very doubtful"; break;
     }
     for (int i = 0; i < 20; i++) {
     }
     //Kutsu.
     annaVastaus();
     
   
   }
   }