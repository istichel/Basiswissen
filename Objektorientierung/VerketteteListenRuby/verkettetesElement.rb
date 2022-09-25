class VerkettetesElement
    def initialize(w)
        @wert = w
        @voergaenger = nil
        @nachfolger = nil
    end

    def vorgaenger=(v)
        @vorgaenger = v
    end

    def nachfolger=(n)
        @nachfolger = n
    end

    def wert=(w)
        @wert = w
    end

    def vorgaenger()
        return @vorgaenger
    end

    def nachfolger()
        return @nachfolger
    end

    def wert()
        return @wert
    end
end
