class Warteschlange
#Klassen müssen in Ruby groß geschrieben werden

#Attribute
#Attribute (Instanzvariablen) werden mit @ gekennzeichnet.
#Jedes Objekt der Klasse hat seine *eigenen* Attribute,
#auf diese kann von jeder Methode aus zugegriffen werden.

#Statische Attribute (Klassenvariablen)
#Klassenvariablen werden mit @@ gekennzeichnet.
#Alle Objekte der Klasse greifen teilen sie Klassenvariablen,
#auf dieser kann von jeder Methode aus zugegriffen werden.

    #statisches Attribut wird angelegt
    @@anzahlWarteschlangen = 0
    
    
    #In Ruby heißt die Methode für den Konstruktor initialize
    def initialize(n)
        #ich werde aufgerufen, wenn ein neues Objekt der Klasse Warteschlange erstellt wird.
        
        puts("Konstruktor wurde aufgerufen...") 
        #kein guter Coding-Stil - dient hier zu veranschaulichung, wann der Konstruktor aufgerufen wird.
        
        #statisches Attribut wird verändert.
        @@anzahlWarteschlangen = @@anzahlWarteschlangen + 1
        
        #neue Attribute werden angelegt
        @name = n 
        @liste = []
    end

    #mutierende Methode nummerZiehen wird definiert (sie heißt mutierend, da sie das Objekt verändert)
    def naechsterKunde()
        puts("Methode naechsterKunde wird aufgerufen")
        if @liste.length > 0 then
            #lokale Variable nummer wird angelegt
            nummer = @liste[0]
            @liste.delete_at(0) #man hätte auch die Methode shift verwenden können.
            return nummer
            #lokale Variable existiert nach dem beenden von nummerZiehen nicht mehr
        end
        return nil
    end

    #mutierende Methode naechsterKunde wird definiert.
    def nummerZiehen()
        puts("Methode nummerZiehen wird aufgerufen")
        #lokale Variable Nummer wird angelegt.
        nummer = @liste.length
        @liste[nummer] = nummer
        return nummer
        #die Variable nummer existiert nicht mehr nachdem die Methode nummerZiehen beendet wurde.
    end

    #Methode naechsterKunde wird definiert.
    def printInfo()
        puts("--------------------------------------------------")
        puts("Info zur Warteschlange mit dem Namen " + @name.to_s)
        puts("Es warten insgesamt " + @liste.length.to_s + " Kunden.")
        if @liste.length>0 then
            puts("Der nächsten Kunde an der Reihe ist: " + @liste[0].to_s)
        end
        puts("--------------------------------------------------")
    end


    #Auf statische Attribute und auf Attribute hat man außerhalb der Klasse keinen Zugriff.
    #Durch Kapselung kann man Attribute nach außerhalb les- und schreibbar machen.
    
    #Kapselung - Lesezugriff auf das statische Attribut @@anzahlWarteschlangen (nicht mutierend)
    def anzahlAllerWarteschlangen()
        puts("Kapselung - Lesezugriff auf das statische Attribut anzahlWarteschlangen")
        return @@anzahlWarteschlangen
    end

    #Kapselung - Lesezugriff auf das Attribut @name (nicht mutierende Methode)
    def name()
        puts("Kapselung - Lesezugriff auf das Attribut @name.")
        return @name
    end

    #Kapselung - Schreibzugriff auf das Attribut @name (mutierend)
    #Hinweis: Methoden können in Ruby *nicht* den gleichen Namen haben.
    def name=(n)
        puts("Kapselung - Schreibzugriff auf das Attribut @name.")
        @name = n
    end

end