require "./verkettetesElement.rb"

class VerketteteListe
    def initialize()
        @startElement = nil
        @letztesElement = nil
    end

    def elementHinzufuegen(w)
        if @startElement == nil then
            @startElement = VerkettetesElement.new(w)
            @letztesElement = @startElement
        else
            neuesElement = VerkettetesElement.new(w)
            neuesElement.vorgaenger=@letztesElement
            @letztesElement.nachfolger=neuesElement
            @letztesElement = neuesElement
        end
    end

    def alleElementeAusgeben()
        iterator = @startElement
        while(iterator != nil) do
             puts(iterator.wert())
             iterator = iterator.nachfolger()
        end
     end
 

    def letztesElementLoeschen()

    end

    def laengeDerListe()

    end

    def istEintragInListe()

    end

end