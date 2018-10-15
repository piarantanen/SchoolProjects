/*
 * Ensimmäinen harkkatyö.
 * Laki2 syksy 2016
 * Pia Rantanen 
 * Rantanen.Pia.M@student.uta.fi
 */

//package breakline;

/**
 *
 * @author piarantanen
 */
public class BreakLine
{
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args )   
    {
        // Vakiot
        final int RIVINPITUUSMAX = 11;
        final int RIVINPITUUSMIN = 3;
        final String ALKUTERVEHDYS = "Hello! I break lines";
        final char RIVINVAIHTOMERKKI = '/';
        final char EROTINMERKKI = ' ';
        final String VIRHE = "Error!";
        final String LOPPU = "See you soon.";
        
        // Muut muuttujat
        int kaytsyote = 0;
        String tekstirivi = "";
        char jatketaanko = ' ';
        
        System.out.println(ALKUTERVEHDYS);
        
        
            do {
                 System.out.println("Enter area widht");
                 kaytsyote = In.readInt();

                 if (kaytsyote < RIVINPITUUSMIN || kaytsyote > RIVINPITUUSMAX)
                    System.out.println(VIRHE);
             }
             while (kaytsyote < RIVINPITUUSMIN || kaytsyote > RIVINPITUUSMAX);
                System.out.println(VIRHE);
            

            //Seuraavaksi:::
            //Halutaan tietää, missä on seuraava erotinmerkki!
            //Ehtolause
            char ekaMerkki = tekstirivi.charAt(0);
            char vikaMerkki = tekstirivi.charAt(tekstirivi.length() - 1);
            
            do {
                System.out.println("Enter a line");
                tekstirivi = In.readString();

    //Tutki onko alussa tai lopussa välilyönti;

            if (ei välilyöntejä alussa tai lopussa) {
            //Tutki toistuuko välilyönti;
            }

            if (ei välilyöntejä alussa tai lopussa eikä välilyönti toistu) {
            Hae pisin osa;
            }
        
            }   
             while (alussa tai lopussa välilyönti tai välilyönti toistuu tai liian pitkä osa);
            
            
            //Tarkista loppuuko rivi erotinmerkkiin
            if (ekaMerkki == EROTINMERKKI && vikaMerkki == EROTINMERKKI) {
                System.out.println(VIRHE);
            }
           
           
            
            // TODO Tarkista indexOf paluuarvo
            if (RIVINPITUUSMAX > tekstirivi.indexOf(EROTINMERKKI))
                
                
            do { 
                System.out.println("Continue (y/n)?");
                jatketaanko = In.readChar();
                if (jatketaanko == 'n') {
                    break;
            } while (jatketaanko != 'y');

         
            }   while (jatketaanko == 'y');
                System.out.println(LOPPU);
            
    }
    
}
