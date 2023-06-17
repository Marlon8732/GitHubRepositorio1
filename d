[1mdiff --git a/Program.cs b/Program.cs[m
[1mindex 020802c..31a5a56 100644[m
[1m--- a/Program.cs[m
[1m+++ b/Program.cs[m
[36m@@ -1,32 +1,40 @@[m
 ﻿//programa que permita visualizar los departamentos de nicaragua con[m
 //su cantidad poblacional.[m
 //Encuentre: Mayor, menor, sumas y ordene los datos[m
[31m-using System.Collections;[m
[31m-String[] Departamento = { "Boaco", "Carazo", "Chinandega", "Chontales", "Costa Caribe Norte", "Costa Caribe Sur", "Estelí", "Granada", "Jinotega", "León", "Madriz", "Managua", "Masaya", "Matagalpa", "Nueva Segovia", "Río San Juan", "Rivas" };[m
[31m-int[] Poblacion = { 185013, 197139, 439906, 190863, 530586, 414543, 229866, 214317, 475630, 421050, 174744, 1575819, 391903, 593503, 271581, 135446, 182645 };[m
[31m-Dictionary<string, int> diccionario = Departamento[m
[31m-          .Zip(Poblacion, (k, v) => new { Clave = k, Valor = v })[m
[31m-          .ToDictionary(x => x.Clave, x => x.Valor);[m
[31m-//Encontrar el mayor y el menor [m
[31m-int maxDep = Poblacion.Max();[m
[31m-int minDep = Poblacion.Min();[m
[31m-string maxDepkey = "", minDepkey = "";[m
[31m-//Encontrar los nombres del mayor y el menor[m
[31m-for (var i = 0; i < Poblacion.Length; i++)[m
[32m+[m[32musing Departamentos;[m
[32m+[m[32mList<depto>lstDeptos= new List<depto>()[m
 {[m
[31m-    if (Poblacion[i] == maxDep)[m
[31m-        maxDepkey = Departamento[i];[m
[31m-    if (Poblacion[i] == minDep)[m
[31m-        minDepkey = Departamento[i];[m
[32m+[m[32m    new depto ("Boaco",185013),[m
[32m+[m[32m    new depto ("Carazo",197139),[m
[32m+[m[32m    new depto ("Chinandega",439906),[m
[32m+[m[32m    new depto ("Chontales",190863),[m
[32m+[m[32m    new depto ("Costa Caribe Norte",530586),[m
[32m+[m[32m    new depto ("Costa caribe Sur",414543),[m
[32m+[m[32m    new depto ("Estelí",229866),[m
[32m+[m[32m    new depto ("Granada",211317),[m
[32m+[m[32m    new depto ("jinotega",475630),[m
[32m+[m[32m    new depto ("León",421050),[m
[32m+[m[32m    new depto ("Madriz",174744),[m
[32m+[m[32m    new depto ("Managua",1546939),[m
[32m+[m[32m    new depto ("Masaya",391903),[m
[32m+[m[32m    new depto ("Matagalpa",593503),[m
[32m+[m[32m    new depto ("Nueva Segovia",271581),[m
[32m+[m[32m    new depto ("Rio San Juan",135446),[m
[32m+[m[32m    new depto ("Rivas",182645),[m
[32m+[m[32m};[m
[32m+[m[32m//Encontrar el mayor y el menor (poblacion)[m
[32m+[m[32mdepto minDepto = lstDeptos.OrderBy(d=>d.population).First();[m
[32m+[m[32mdepto maxDepto = lstDeptos.OrderBy(d=>d.population).Last();[m
[32m+[m[32m//Ordenar los departamentos[m
[32m+[m[32mvar DeptOrdenado = lstDeptos.OrderBy(d=>d.population);[m
[32m+[m[32m//Mostrar departamentos ordenados[m
[32m+[m[32mforeach (var item in DeptOrdenado)[m
[32m+[m[32m{[m
[32m+[m[32m    Console.WriteLine($"{item.Name,-20}==>{item.population,10:N0}");[m
 }[m
[31m-//Ordenando con diccionario y Orderby de LINQ [m
[31m-//var ordenado = diccionario.OrderBy(x => x.Value).ToDictionary(x => x.Key, x => x.Value);[m
[31m-//Departamento = ordenado.Keys.ToArray();[m
[31m-//Poblacion = ordenado.Values.ToArray();[m
[31m-//mostrar los resultados [m
[31m-for (var i = 0; i < Poblacion.Length; i++)[m
[31m-    Console.WriteLine($"{Departamento[i],20} ==> {Poblacion[i],10:N0}");[m
[31m-//Sumar todas las poblaciones con LINQ [m
[31m-Console.WriteLine($"Población General:{diccionario.Values.Sum():N0}");[m
[31m-Console.WriteLine($"Departamento con mayor Población:{maxDepkey}");[m
[31m-Console.WriteLine($"Departamento con menor Población:{minDepkey}");[m
[32m+[m[32m//mostar el mayor y el menor[m
[32m+[m[32mConsole.WriteLine($"Departamento con menor Población:{minDepto.Name}");[m
[32m+[m[32mConsole.WriteLine($"Departamento con mayor Población:{maxDepto.Name}");[m
[32m+[m[32m//Sumar todas las poblaciones con SUM de LINQ[m
[32m+[m[32mint total = lstDeptos.Select(d=>d.population).Sum();[m
[32m+[m[32mConsole.WriteLine($"Poblacion General:{total:N0}");[m
[1mdiff --git a/bin/Debug/net6.0/ColecDictionary.dll b/bin/Debug/net6.0/ColecDictionary.dll[m
[1mindex abf6a80..025407b 100644[m
Binary files a/bin/Debug/net6.0/ColecDictionary.dll and b/bin/Debug/net6.0/ColecDictionary.dll differ
[1mdiff --git a/bin/Debug/net6.0/ColecDictionary.pdb b/bin/Debug/net6.0/ColecDictionary.pdb[m
[1mindex 9b0e9b1..3db85e5 100644[m
Binary files a/bin/Debug/net6.0/ColecDictionary.pdb and b/bin/Debug/net6.0/ColecDictionary.pdb differ
[1mdiff --git a/obj/Debug/net6.0/ColecDictionary.csproj.CoreCompileInputs.cache b/obj/Debug/net6.0/ColecDictionary.csproj.CoreCompileInputs.cache[m
[1mindex 18a0d26..19ecda5 100644[m
[1m--- a/obj/Debug/net6.0/ColecDictionary.csproj.CoreCompileInputs.cache[m
[1m+++ b/obj/Debug/net6.0/ColecDictionary.csproj.CoreCompileInputs.cache[m
[36m@@ -1 +1 @@[m
[31m-a5be10fb20c35eb60ba4dec63a816344ec8b3fa7[m
[32m+[m[32m470130d5a7fdfc8b89b01fe0135af71e56e5f81d[m
[1mdiff --git a/obj/Debug/net6.0/ColecDictionary.dll b/obj/Debug/net6.0/ColecDictionary.dll[m
[1mindex abf6a80..025407b 100644[m
Binary files a/obj/Debug/net6.0/ColecDictionary.dll and b/obj/Debug/net6.0/ColecDictionary.dll differ
[1mdiff --git a/obj/Debug/net6.0/ColecDictionary.pdb b/obj/Debug/net6.0/ColecDictionary.pdb[m
[1mindex 9b0e9b1..3db85e5 100644[m
Binary files a/obj/Debug/net6.0/ColecDictionary.pdb and b/obj/Debug/net6.0/ColecDictionary.pdb differ
[1mdiff --git a/obj/Debug/net6.0/ref/ColecDictionary.dll b/obj/Debug/net6.0/ref/ColecDictionary.dll[m
[1mindex 846aacb..a9e3997 100644[m
Binary files a/obj/Debug/net6.0/ref/ColecDictionary.dll and b/obj/Debug/net6.0/ref/ColecDictionary.dll differ
[1mdiff --git a/obj/Debug/net6.0/refint/ColecDictionary.dll b/obj/Debug/net6.0/refint/ColecDictionary.dll[m
[1mindex 846aacb..a9e3997 100644[m
Binary files a/obj/Debug/net6.0/refint/ColecDictionary.dll and b/obj/Debug/net6.0/refint/ColecDictionary.dll differ
