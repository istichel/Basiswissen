import verkettetesElement

class VerketteteListe:
    def __init__(self):
        self.startElement = None
        self.letztesElement = None

    def elementHinzufuegen(self,w):
        if self.startElement == None:
            self.startElement = verkettetesElement.VerkettetesElement(w)
            self.letztesElement = self.startElement
        else:
            neuesElement = verkettetesElement.VerkettetesElement(w)
            neuesElement.setVorgaenger(self.letztesElement)
            self.letztesElement.setNachfolger(neuesElement)
            self.letztesElement = neuesElement

    def alleElementeAusgeben(self):
        iterator = self.startElement
        while iterator != None:
             print(iterator.getWert())
             iterator = iterator.getNachfolger()
 

    #def letztesElementLoeschen(self):
        
    #def laengeDerListe(self):
    
    #def istEintragInListe(self):
