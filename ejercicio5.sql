SELECT p.Nombre
from perro p 
inner join dueno d on DNI = DNI_dueno
WHERE d.Nombre = 'Pedro'