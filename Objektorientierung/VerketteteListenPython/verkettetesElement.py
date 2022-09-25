class VerkettetesElement:

    def __init__(self,w):
        self.wert = w
        self.voergaenger = None
        self.nachfolger = None

    def setVorgaenger(self,v):
        self.vorgaenger = v

    def setNachfolger(self,n):
        self.nachfolger = n
    
    def setWert(self,w):
        self.wert = w

    def getVorgaenger(self):
        return self.vorgaenger

    def getNachfolger(self):
        return self.nachfolger

    def getWert(self):
        return self.wert
    

