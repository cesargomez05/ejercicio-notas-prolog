# Ejercicio Estilo basado en reglas

## Integrantes
* Laura Alejandra Campos - 20201099028
* Steven Fabián Gómez - 20201099030
* César Augusto Gómez - 20201099031
* Edna Nayibe Palma - 20201099041

## Objetivo de la solución
Desarrollo de un programa en Python mediante el cual, a partir de unas reglas de negocio definidas en un archivo Prolog (.pl) permita consultar si un estudiante aprueba o no un determinado curso; esto teniendo en cuenta inasistencias y el ponderado de calificaciones.

## Reglas de negocio contempladas
- Cada inasistencia se registrará por estudiante y curso.
```prolog
falla(estudiante, curso).
```
- Las calificaciones deben ser valores numéricos en el rango de 1 a 5, y su porcentaje sobre la ponderación final debe ser un número decimal de máximo 2 decimales entre 0 y 1. Estos se deben registrar por estudiante y curso.
```prolog
calificacion(estudiante, curso, nota, porcentaje).
```
- Si un estudiante registra 3 o mas inasistencias, reprobará el curso por inasistencia.
- Si el ponderado de notas de un estudiante es menor a 3.0, reprobará el curso por ponderado de notas.
- Si un estudiante tiene menos de 3 inasistencias, y el ponderado de notas es mayor o igual a 3.0, el estudiante aprobará el curso.

## Uso de la solución

