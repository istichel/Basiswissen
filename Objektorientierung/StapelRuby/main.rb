require './stapel.rb'

s1 = Stapel.new("Erster Stapel")
s2 = Stapel.new("Zweiter Stapel")


## wenn anzahlAllerStapel zugriff auf ein statisches Attribut hat, werden die beiden folgenden Zeilen das gleiche ausgeben!
puts("Stapel insgesamt " + s1.anzahlAllerStapel().to_s)
puts("Stapel insgesamt " + s2.anzahlAllerStapel().to_s)


s1.name="NeuerName"
puts("Der Stapel heißt jetzt: " + s1.name)


for i in 1..10 do
    s1.aufStapelLegen(random(100))
end

for i in 1..5 do
    s2.aufStapelLegen(random(10))
end


s1.printInfo()
puts(s1.vomStapelNehmen())
puts(s1.vomStapelNehmen())
puts(s1.vomStapelNehmen())
s1.printInfo()


s2.printInfo()
puts(s2.vomStapelNehmen())
puts(s2.vomStapelNehmen())
puts(s2.vomStapelNehmen())
s2.printInfo()

