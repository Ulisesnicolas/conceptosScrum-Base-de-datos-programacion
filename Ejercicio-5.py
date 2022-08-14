# Crear una tupla en Python con el nombre de "Historial" la cual contenga los siguientes valores:
# 2350, 5960, 23000, 1000, 8900
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota "Puppy". Calcular el monto total gastado a lo largo del tiempo por atención de "Puppy". Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje "Gastos por encima de lo presupuestado".

# Crear tupla
Historial = (2350, 5960, 23000, 1000, 8900)

# Sumando valores de la tupla
montoTotal = sum(Historial)

# Decidir que hacer si el monto es menor o mayor a 30000
if (montoTotal < 30000):
    print(montoTotal)
else:
    print('Gastos por encima de lo presupuestado')