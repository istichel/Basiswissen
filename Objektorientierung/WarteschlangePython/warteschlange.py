class Warteschlange:
#Klassen müssen in Ruby groß geschrieben werden

#Attribute
#Attribute (Instanzvariablen) werden mit @ gekennzeichnet.
#Jedes Objekt der Klasse hat seine *eigenen* Attribute,
#auf diese kann von jeder Methode aus zugegriffen werden.

#Statische Attribute (Klassenvariablen)
#Klassenvariablen werden außerhalb einer Methode deklariert
#Alle Objekte der Klasse greifen teilen sie Klassenvariablen,
#auf dieser kann von jeder Methode aus zugegriffen werden.

    #statisches Attribut wird angelegt
    anzahlWarteschlangen = 0
    
    
    #In Python heißt die Methode für den Konstruktor initialize
    def __init__(self,n):
        #ich werde aufgerufen, wenn ein neues Objekt der Klasse Warteschlange erstellt wird.
        
        print("Konstruktor wurde aufgerufen...") 
        #kein guter Coding-Stil - dient hier zu veranschaulichung, wann der Konstruktor aufgerufen wird.
        
        #statisches Attribut wird verändert.
        self.anzahlWarteschlangen = self.anzahlWarteschlangen + 1
        
        #neue Attribute werden angelegt
        self.name = n 
        self.liste = []

    #mutierende Methode nummerZiehen wird definiert (sie heißt mutierend, da sie das Objekt verändert)
    def naechsterKunde(self):
        print("Methode naechsterKunde wird aufgerufen")
        if len(self.liste) > 0 :
            #lokale Variable nummer wird angelegt
            nummer = self.liste[0]
            del self.liste[0] #man hätte auch die Methode shift verwenden können.
            return nummer
            #lokale Variable existiert nach dem beenden von nummerZiehen nicht mehr
        return None

    #mutierende Methode naechsterKunde wird definiert.
    def nummerZiehen(self):
        print("Methode nummerZiehen wird aufgerufen")
        #lokale Variable Nummer wird angelegt.
        nummer = 0
        if len(self.liste) > 0 :
            nummer = self.liste[len(self.liste)-1]+1
        self.liste.append(nummer)
        return nummer
        #die Variable nummer existiert nicht mehr nachdem die Methode nummerZiehen beendet wurde.

    #Methode naechsterKunde wird definiert.
    def printInfo(self):
        print("--------------------------------------------------")
        print("Info zur Warteschlange mit dem Namen " + str(self.name))
        print("Es warten insgesamt " + str(len(self.liste)) + " Kunden.")
        if len(self.liste)>0 :
            print("Der nächsten Kunde an der Reihe ist: " + str(self.liste[0]))
        print("--------------------------------------------------")


    #Auf statische Attribute und auf Attribute hat man außerhalb der Klasse keinen Zugriff.
    #Durch Kapselung kann man Attribute nach außerhalb les- und schreibbar machen.
    
    #Kapselung - Lesezugriff auf das statische Attribut anzahlWarteschlangen (nicht mutierend)
    def anzahlAllerWarteschlangen(self):
        print("Kapselung - Lesezugriff auf das statische Attribut anzahlWarteschlangen")
        return self.anzahlWarteschlangen

    #Kapselung - Lesezugriff auf das Attribut name (nicht mutierende Methode)
    def getName(self):
        print("Kapselung - Lesezugriff auf das Attribut name.")
        return self.name

    #Kapselung - Schreibzugriff auf das Attribut name (mutierend)
    def setName(self,n):
        print("Kapselung - Schreibzugriff auf das Attribut name.")
        self.name = n
