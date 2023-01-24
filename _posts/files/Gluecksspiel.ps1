#-------------------------------------------------------------------------------------#
# 77207 Glücksspiel
# Jason Johansson
# 09/06/2021
# Version 1.0.0.10
#-------------------------------------------------------------------------------------#

# Ab hier wird widerholt solange die Schlussbedingung erfüllt ist.
do {
    
  # Variabel deklarierung
  $zufallszahl = 0
  $versuche = 0
  $zahl = 0
  $weitermachen = 1

  # Konsole löschen
  Clear-Host

  # Zufallszahl generieren
  $zufallszahl = get-random -minimum 1 -maximum 101

  do {
    # Eingabe der Zahl
    $zahl = Read-Host "Geben sie eine Zahl zwischen 1 und 100 ein"

    # Überprüfen, ob die geratene Zahl richtig ist. Falls ja, wird die anzhal gebrauchte Versuhe ausgegeben. 
    # Falls nicht wird ermittelt ob die Zufallszahl höher oder tiefer ist. 
    if ($zahl -eq $zufallszahl) {

      $versuche = $versuche + 1
      Write-Host "Sie haben "$versuche" Versuche gebracuht"
        
    }
    else {

      # Angabe, ob die eingegebene zahl zu hoch oder zu tief ist.
      if ($zahl -lt $zufallszahl) {

        Write-Host "Ihre Zahl ist zu klein"
        $versuche = $versuche + 1
      }
      elseif ($zahl -gt $zufallszahl) {
        Write-Host "Ihre Zahl ist zu gross"
        $versuche = $versuche + 1

      }
    }
  }    while ($zahl -ne $zufallszahl) 


  $weitermachen = Read-Host "Wollen sie weitermachen? 1 fuer ja, 2 fuer nein"
} while ($weitermachen -eq 1)