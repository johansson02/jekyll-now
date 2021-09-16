---
layout: post
title: Rekursion mit Kara
---

In diesem Portfolio erkläre ich, wie ich einen Rekursiven Aufruf in Java verwendete, um Kaara zu steuern.

## Aufgabenstellung

Kara ist ein Marienkäfer, der in einer einfachen Welt lebt. Er kann programmiert werden und so diverse Aufgaben erledigen, zum Beispiel Kleeblätter sammeln. Karas Programme werden in einer grafischen Entwicklungsumgebung erstellt.

Zu dieser Beschreibung bekamen wir 3 Aufgaben:

1. Kara steht vor einer freien Strecke, an deren Ende ein Baum steht. Er soll bis zum Baum laufen und sich dort umdrehen.
2. Kara steht in einer Reihe, an deren Ende ein Kleeblatt liegt. Kara soll bis zum Kleeblatt laufen und das Blatt an seinen Startpunkt bringen.
3. Kara steht in einer Reihe, an deren Ende ein Baum steht. Kara soll bis zum Baum laufen, dabei alle Blätter einsammeln, sich dort umdrehen, zurücklaufen und die Blätter an den alten Plätzen ablegen.

## Ziele

Die Gegebenen Ziele waren:

- Die komplette Aufrufsequenz wurde aufgeschrieben.
- Der rekursiven Algorithmus zur Fakultät wurde implementiert .
- Die drei Programmieraufgaben wurden mit Kara gelöst.

Meine eigenen Ziele waren:

- Eine einfache Rekursive Methode erstellen und sie verstehen.

## Produkt

Um überhaupt eine Ahnung von Kara zu bekommen wurde uns ein Beispiel Projekt gegeben, welches die meisten Methoden erklärt. Zusätzlich war auf Moodle noch eine Kara-Anleitung zu finden. 

Im Beispiel Programm läuft Kara geradeaus in die Richtung vom Baum. Wenn sie über ein Blatt läuft, nimmt sie es mit. Wenn es kein Blatt hat, platziert sie eines.

Mit dem Beispiel Programm zur Seite ging die Umsetzung aller 3 Aufgaben relativ einfach. Die benötigten Methoden wurden schon gezeigt und es war klar, wie man sie anwendet. 

Indem ich das Beispiel Projekt als Vorlage nahm für die Aufgaben, musste ich bei Aufgabe A nur wenig ändern. Etwa die Platzierung der Blätter und das Laufverhalten von Kara.

Eine rekursive Methode hat 2 Merkmale: 

- Einen Selbstaufruf
- Eine Abbruchbedingung

Bei A war die Abbruchbedingung, dass Kara den Baum erreicht.

Auch bei B konnte ich wieder den Grossteil vom Beispiel übernehmen, hier war jedoch das Verhalten von Kara etwas Komplexer. Nach kurzer Überlegung konnte ich mir aber dich schon vorstellen, wie ich dieses Problem lösen sollte. Allerdings stockte ich nachher bei der Umsetzung ein wenig. Ich wurde ein bisschen mit den Schritten verwirrt und wusste nicht genau wo Ich den rekursiven Aufruf implementieren sollte. Nach Besprechung mit einem Sitznachbarn wurde es wieder klar. Der rekursive Aufruf kommt zwischen den Beiden "kara.move();" Aufrufen, damit Kara sich wieder von dem Blatt wegkommt, und somit der Selbstaufruf weitergeht, weil die Bedingung somit wider erfüllt ist. Sonst würde Kara am Ende stehen Bleiben.

C war die schwierigste Aufgabe. Bis ich zur richtigen Lösung kam, brauchte ich mehrere Versuche, bei welchen ich dachte, ich wäre richtig. Schlussendlich hatte ich 2 "If" Schleifen ineinander verschachtelt. Die erste schaut, ob Kara vor dem Baum steht.

- Falls ja, dreht sich Kara um.
- Falls nein, kommt die zweite Schleife ins Spiel.

Die zweite schaut, ob Kara auf einem Blatt steht.

- Falls nein, bewegt sich Kara vorwärts und die Methode wird wieder aufgerufen. Hier passiert das gleiche, wie bei B. Der zweite "kara.move();" Aufruf stellt sicher, dass Kara sich nach dem Umdrehen wieder zurückbewegen kann.
- Falls ja, nimmt Kara das Blatt auf, bewegt sich vorwärts. Jetzt kommt der rekursive Aufruf. Es wird nochmals alles wiederholt und Kara nimmt alle Blätter auf bis sie vor dem Baum steht. Der zweite "kara.move();" Aufruf in der zweiten Schleife schaut, dass Kara einen Platz freilässt zwischen den Blättern.
Da Kara nur so viele Blätter platzieren kann, wie sie Aufgenommen hat, muss keine Logik zur Speicherung der Blätter und dessen Plätze implementiert werden. Die Reihe, in der Kara sich bewegt hat dazu genau so viele Plätze, dass Kara wieder zurück an den Startplatz kommen kann, bevor ihr die Blätter ausgehen und sie anhält.

## Reflexion

Ich fand diesen Auftrag sehr spannend. Erst war ich von der Idee, ein neues System zu lernen ein bisschen eingeschüchtert. Als ich mir jedoch das Beispiel-Projekt angeschaut habe, änderte ich meine Meinung Schnell. Es War einfach, in der Umgebung klarzukommen und immer das Spiel starten zu können und zu sehen, wie Kara sich bewegt und, was man noch verbessern musste, hat mich motiviert und ermutigt weiterzumachen. Die 3 Aufgaben fand ich angemessen vom Schwierigkeitsgrad. Man konnte immer vom Vorherigen ausgehen, aber es kam immer mindestens eine neue Schwierigkeit dazu. 

Nach dem Bearbeiten der Aufträge, während der Lektion, verbesserte ich sie noch mit der Musterlösung.

## Zeilerfüllung

Die Gegebenen Ziele waren:

- Die komplette Aufrufsequenz wurde aufgeschrieben. ✓
Ist im Verlinkten Programm-code zu finden.

- Der rekursiven Algorithmus zur Fakultät wurde implementiert . ✓
Gelöst, aber nicht relevant zum "Kara" Auftrag.

- Die drei Programmieraufgaben wurden mit Kara gelöst. ✓
Die 3 Aufgaben sind im Verlinkten Programm-code zu finden.


Meine eigenen Ziele waren:

- Eine einfache Rekursive Methode erstellen und sie verstehen. ✓
Erreichte ich in jeder Teilaufgabe.

## Code download

Mein Kaara-Projekt können Sie <a href="/projekte/Rekursion mit Kara/Kara Aufgaben a.b.c.zip" download>hier</a> herunterladen.
