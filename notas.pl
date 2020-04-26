% estudiante(Nombre)
estudiante(andrea).
estudiante(carlos).
estudiante(cesar).
estudiante(juan).

% curso(Nombre)
curso(informatica).
curso(programacion).

% estudiante(Estudiante, Curso)
estudiante(andrea, informatica).
estudiante(carlos, informatica).
estudiante(juan, informatica).
estudiante(andrea, programacion).
estudiante(carlos, programacion).
estudiante(cesar, programacion).
estudiante(juan, programacion).

% Regla para sumar los valores del array
suma([],0).
suma([N|Y],M):- suma(Y, M1), M is M1 + N.

% Regla para obtener la longitud de un elemento
long([],0).
long([_|Y],M):- long(Y, M1), M is M1 + 1.

% calificacion(Estudiante, Curso, Nota, Porcentaje)
calificacion(juan, informatica, 1.0, 0.3).
calificacion(juan, informatica, 1.0, 0.3).
calificacion(juan, informatica, 1.0, 0.4).
calificacion(carlos, informatica, 1.0, 0.3).
calificacion(carlos, informatica, 1.0, 0.3).
calificacion(carlos, informatica, 1.0, 0.4).
calificacion(andrea, informatica, 1.0, 0.3).
calificacion(andrea, informatica, 1.0, 0.3).
calificacion(andrea, informatica, 1.0, 0.4).

calificacion(juan, programacion, 1.0, 0.3).
calificacion(juan, programacion, 1.0, 0.3).
calificacion(juan, programacion, 1.0, 0.4).
calificacion(carlos, programacion, 1.0, 0.3).
calificacion(carlos, programacion, 1.0, 0.3).
calificacion(carlos, programacion, 1.0, 0.4).
calificacion(andrea, programacion, 1.0, 0.3).
calificacion(andrea, programacion, 1.0, 0.3).
calificacion(andrea, programacion, 1.0, 0.4).
calificacion(cesar, programacion, 2.5, 0.3).
calificacion(cesar, programacion, 2.5, 0.3).
calificacion(cesar, programacion, 4.0, 0.4).

% nota_ponderada(Estudiante, Curso, Resultado)
nota_ponderada(E, C, R) :- calificacion(E, C, N, P), R is N * P.

% lista_notas(Estudiante, Curso, Lista)
lista_notas(E, C, L) :- bagof(N, nota_ponderada(E, C, N), L).

% nota_final(Estudiante, Curso, NotaFinal)
nota_final(E, C, Nf) :- lista_notas(E, C, L), suma(L, S), Nf is S.

% falla(Estudiante, Curso)
falla(juan, programacion).
falla(juan, programacion).
falla(carlos, programacion).
falla(carlos, programacion).
falla(carlos, programacion).
falla(cesar, programacion).

% numero_fallas(Estudiante, Curso, Fallas)
numero_fallas(E, C, F) :- bagof(1, falla(E, C), L), long(L, S), F is S.

