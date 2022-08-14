perro = ["Puppy",  "12/12/2012" , "Macho, 123"]
perro2 = ["Fido",  "12/12/2012" , "Macho", "23546987"]

for x in range (len(perro)):
    if perro[x] == "12/12/2012":
        perro[x] = "13/12/2012"

perro.append(28957346)
print(perro)

for x in range (len(perro2)):
    if perro2[x] == "23546987":
        perro2[x] = "28957346"
        
print(perro2)