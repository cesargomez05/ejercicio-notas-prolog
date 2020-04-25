# Ejercicio Estilo basado en reglas

## Integrantes
* Laura Alejandra Campos - 20201099028
* Steven Fabián Gómez - 20201099030
* César Augusto Gómez - 20201099031
* Edna Nayibe Palma - 20201099041

## Objetivo de la solución
Desarrollo de un programa en Python mediante el cual, a partir de unas reglas de negocio definidas en un archivo Prolog (.pl) permita consultar si un estudiante aprueba o no un determinado curso; esto teniendo en cuenta inasistencias y el ponderado de calificaciones.

## Reglas de negocio contempladas
- Cada inasistencia se registrará asociando un estudiante y un curso
- Por cada nota que se registre de un estudiante en un curso, se debe incluir una calificación numérica en el rango de 1 a 5; y su porcentaje en la nota final (entre 0 y 100).
- Si un estudiante registra 3 o mas inasistencias, reprobará el curso por inasistencia.
- Si el ponderado de notas de un estudiante es menor a 3.0, reprobará el curso por ponderado de notas.
- Si un estudiante tiene menos de 3 inasistencias, y el ponderado de notas es mayor o igual a 3.0, el estudiante aprobará el curso.

## Uso de la solución

