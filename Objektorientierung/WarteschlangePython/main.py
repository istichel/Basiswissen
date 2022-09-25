import warteschlange

#Die Datei warteschlange.rb wurde von Ruby zur Kenntniss genommen - es wurde bis hierhin noch keine einzige Zeile der Datei ausgeführt.
print("\n\nKlasse bekannt, aber noch nichts ausgeführt...jetzt geht's los!\n\n")


#Folgende Zeile ruft den Konstruktor der Klasse Warteschlange auf.
fs = warteschlange.Warteschlange("Führerschein")
#Methode anzahlAllerWarteschlangen wird ausgeführt.
print("Führerschein erstellt: " + str(fs.anzahlAllerWarteschlangen()))

#Folgende Zeile ruft den Konstruktor der Klasse Warteschlange auf.
ps = warteschlange.Warteschlange("Personalausweis")
#An dieser Stelle gibt es !zwei! Objekte der Klasse Warteschlange. Sie teilen sich *ausschließlich* die statischen Attribute.

#Das bedeutet auch, dass die Erstellung von ps das statische Attribut verändert hat. Man beachte, dass die Methode anzahlAllerWarteschlangen auf fs ausgeführt wird.
print("Personalausweis erstellt: " + str(fs.anzahlAllerWarteschlangen()))

#Mutierende Methode name= wird aufgerufen. Runde Klammern kann / muss man aber nicht weglassen, hier siehts einfach gut aus.
ps.setName("Bürgerservices")

#*Nicht*-Mutierende Methode name wird aufgerufen.
print("Die Warteschlange heißt jetzt: " + str(ps.getName()))


for i in range(10):
    fs.nummerZiehen()

for i in range(5):
    ps.nummerZiehen()


fs.printInfo()
fs.naechsterKunde()
fs.naechsterKunde()
fs.naechsterKunde()
fs.printInfo()

ps.printInfo()