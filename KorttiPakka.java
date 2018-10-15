/*
 * Viikkoharjoitus 1, tehtävä 2.
 *
 * Lausekielinen ohjelmointi II, syksy 2016.
 *
 * Pia Rantanen, Rantanen.Pia.M@student.uta.fi
 *
 */
 
 
 public class KorttiPakka
 {
   /* 
   */
   //Kutsutaan operaatiota (10) kertaa.
   public static void arvoKortti()
   {
   			int maa_rndr = (int)(3 * Math.random()) + 1;
   			int numero = (int)(13 * Math.random()) + 1;
   			String maa = "CDHS";

   			System.out.print(numero);
   			System.out.println(maa.charAt(maa_rndr));
   }
	
   public static void main(String[] args)
   {   
	  //Kutsu
	  for (int i = 0; i < 10; i++) {
			arvoKortti();
	  }
	}
}