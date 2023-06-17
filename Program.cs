//programa que permita visualizar los departamentos de nicaragua con
//su cantidad poblacional.
//Encuentre: Mayor, menor, sumas y ordene los datos
using Departamentos;
List<depto>lstDeptos= new List<depto>()
{
    new depto ("Boaco",185013),
    new depto ("Carazo",197139),
    new depto ("Chinandega",439906),
    new depto ("Chontales",190863),
    new depto ("Costa Caribe Norte",530586),
    new depto ("Costa caribe Sur",414543),
    new depto ("Estelí",229866),
    new depto ("Granada",211317),
    new depto ("jinotega",475630),
    new depto ("León",421050),
    new depto ("Madriz",174744),
    new depto ("Managua",1546939),
    new depto ("Masaya",391903),
    new depto ("Matagalpa",593503),
    new depto ("Nueva Segovia",271581),
    new depto ("Rio San Juan",135446),
    new depto ("Rivas",182645),
};
//Encontrar el mayor y el menor (poblacion)
depto minDepto = lstDeptos.OrderBy(d=>d.population).First();
depto maxDepto = lstDeptos.OrderBy(d=>d.population).Last();
//Ordenar los departamentos
var DeptOrdenado = lstDeptos.OrderBy(d=>d.population);
//Mostrar departamentos ordenados
foreach (var item in DeptOrdenado)
{
    Console.WriteLine($"{item.Name,-20}==>{item.population,10:N0}");
}
<<<<<<< HEAD
//Ordenando con diccionario y Orderby de LINQ 
//var ordenado = diccionario.OrderBy(x => x.Value).ToDictionary(x => x.Key, x => x.Value);
//Departamento = ordenado.Keys.ToArray();
//Poblacion = ordenado.Values.ToArray();
//mostrar los resultados 
for (var i = 0; i < Poblacion.Length; i++)
    Console.WriteLine($"{Departamento[i],20} ==> {Poblacion[i],10:N0}");
//Sumar todas las poblaciones con LINQ 
Console.WriteLine($"Población General:{Poblacion.Sum():N0}");
Console.WriteLine($"Departamento con mayor Población:{maxDepkey}");
Console.WriteLine($"Departamento con menor Población:{minDepkey}");
=======
//mostar el mayor y el menor
Console.WriteLine($"Departamento con menor Población:{minDepto.Name}");
Console.WriteLine($"Departamento con mayor Población:{maxDepto.Name}");
//Sumar todas las poblaciones con SUM de LINQ
int total = lstDeptos.Select(d=>d.population).Sum();
Console.WriteLine($"Poblacion General:{total:N0}");
>>>>>>> 9607120 (“Versi≤n)
