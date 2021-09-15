# Variabel Deklarierung
$sourcepfad = "C:\Users\themi\Desktop\Schuel\Fächer\ILA\1306"
$wordfilename = "C:\Users\themi\Desktop\Schuel\Fächer\ILA\1306\out_file.docx"
$arraybildlinks = @()
$webclient = New-Object System.Net.WebClient 

$anzahlbilder = Read-Host "Wie viele bilder wollen sie abspeichern? (zahl)"

# Für anzahl Bilder, je den Link anfordern
for ($i = 1; $i -le $anzahlbilder.Count; $i++) {
    $arraybildlinks = Read-Host "Geben sie den link ein für das $i. bild"
}

# Für anzahl Links im Array, je das Bild herunterladen
for ($a = 1; $a -le $arraybildlinks.Count; $a++) {
    $webclient.DownloadFile($arraybildlinks, "C:\Users\themi\Desktop\Schuel\Fächer\ILA\1306\$a.jpg") 
}

$wordapp = new-object -comobject word.application
$picsourceforword = Get-Childitem -Path $sourcepfad -recurse |  Where-Object { $_.extension -eq  '.jpg'}

# Für jedes heruntergeladene Bild, Word-datei erstellen, einfügen und speichern
ForEach ( $p in $picsourceforword ) {
    $wordapp.Visible = $True
    $objDoc = $wordapp.documents.add()
    $objSelection = $wordapp.Selection
    $ImageName = $p.FullName
    $objSelection.InlineShapes.AddPicture($ImageName)
    $objDoc.SaveAs([REF]$wordfilename)
}

# Word Schliessen und session beenden
$objDoc.Close()
$wordapp.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($objDoc)