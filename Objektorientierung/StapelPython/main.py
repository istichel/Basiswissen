import stapel

s1 = stapel.Stapel("Erster Stapel")
s2 = stapel.Stapel("Zweiter Stapel")


## wenn anzahlAllerStapel zugriff auf ein statisches Attribut hat, werden die beiden folgenden Zeilen das gleiche ausgeben!
print("Stapel insgesamt " + str(s1.anzahlAllerStapel()))
print("Stapel insgesamt " + str(s2.anzahlAllerStapel()))


s1.setName("NeuerName")
print("Der Stapel heißt jetzt: " + s1.getName())


for i in Range(10):
    s1.aufStapelLegen(random(100))

for i in Range(5):
    s2.aufStapelLegen(random(10))

s1.printInfo()
print(str(s1.vomStapelNehmen()))
print(str(s1.vomStapelNehmen()))
print(str(s1.vomStapelNehmen()))
s1.printInfo()


s2.printInfo()
print(str(s2.vomStapelNehmen()))
print(str(s2.vomStapelNehmen()))
print(str(s2.vomStapelNehmen()))
s2.printInfo()



