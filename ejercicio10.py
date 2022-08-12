#Consigna:Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros. Ordenarla alfabéticamente y mostrarla por pantalla.
#----------------------------------------------------------------------#

#Creo la lista con los nombres de los clientes
clientes = [ "Juan",  "Mario",  "Ariel",  "Josefina",  "Marianella"]

#Ordeno la lista alfabeticamente usando la función sorted
clientesOrdenados = sorted(clientes)

#Imprimo la lista ordenada recooriendola para darle formato
for x in range(len(clientesOrdenados)):
  print("Cliente #",x,": ", clientesOrdenados[x])