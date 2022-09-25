require './warteschlange.rb'


#Die Datei warteschlange.rb wurde von Ruby zur Kenntniss genommen - es wurde bis hierhin noch keine einzige Zeile der Datei ausgeführt.
puts("\n\nKlasse bekannt, aber noch nichts ausgeführt...jetzt geht's los!\n\n")


#Folgende Zeile ruft den Konstruktor der Klasse Warteschlange auf.
fs = Warteschlange.new("Führerschein")
#Methode anzahlAllerWarteschlangen wird ausgeführt.
puts("Führerschein erstellt: " + fs.anzahlAllerWarteschlangen().to_s)

#Folgende Zeile ruft den Konstruktor der Klasse Warteschlange auf.
ps = Warteschlange.new("Personalausweis")
#An dieser Stelle gibt es !zwei! Objekte der Klasse Warteschlange. Sie teilen sich *ausschließlich* die statischen Attribute.

#Das bedeutet auch, dass die Erstellung von ps das statische Attribut verändert hat. Man beachte, dass die Methode anzahlAllerWarteschlangen auf fs ausgeführt wird.
puts("Personalausweis erstellt: " +fs.anzahlAllerWarteschlangen().to_s)

#Mutierende Methode name= wird aufgerufen. Runde Klammern kann / muss man aber nicht weglassen, hier siehts einfach gut aus.
ps.name="Bürgerservices"

#*Nicht*-Mutierende Methode name wird aufgerufen.
puts("Die Warteschlange heißt jetzt: " + ps.name)


for i in 1..10 do
    fs.nummerZiehen()
end

for i in 1..5 do
    ps.nummerZiehen()
end


fs.printInfo()
fs.naechsterKunde()
fs.naechsterKunde()
fs.naechsterKunde()
fs.printInfo()

ps.printInfo()