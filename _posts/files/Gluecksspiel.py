#-------------------------------------------------------------------------------------#
# Python Glücksspiel
# Jason Johansson
# 25/06/2021
# Version 1.0.0.16
#-------------------------------------------------------------------------------------#

import random

# Diese Variable wird ausserhalb der While-Schleife Deklariert und initialisiert,
# Weil sie die Bedingung für die While-Schleife ist.
weitermachen = 1

while weitermachen == 1:
    # Variabel deklarierung
    zufallszahl = 0
    versuche = 0
    zahl = 0

    # Zufallszahl generieren
    zufallszahl = random.randint(1, 100)

    while zahl != zufallszahl:

       # Eingabe der Zahl
       zahl = input("Geben sie eine Zahl zwischen 1 und 100 ein")

       # Überprüfen, ob die geratene Zahl richtig ist. Falls ja, wird die anzhal gebrauchte Versuche ausgegeben. 
       # Falls nicht wird ermittelt ob die Zufallszahl höher oder tiefer ist. 
       if zahl == weitermachen:

           versuche = versuche + 1
           print("Sie haben " + versuche +" gerbaucht")

       else:
            if zahl < zufallszahl:

                print("Ihre Zahl ist zu klein")
                versuche = versuche + 1

            elif zahl > zufallszahl:

                print("Ihre Zahl ist zu gross")
                versuche = versuche + 1

    weitermachen = input("Wollen sie weitermachen? 1 fuer ja, 2 fuer nein")