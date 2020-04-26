% Estudiantes
estudiante(andrea).
estudiante(carlos).
estudiante(cesar).
estudiante(juan).

% Cursos
curso(informatica).
curso(programacion).

% Relacion estudiantes - curso
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

% Calificacion por estudiante
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
calificacion(cesar, programacion, 1.0, 0.3).
calificacion(cesar, programacion, 1.0, 0.3).
calificacion(cesar, programacion, 1.0, 0.4).

% Producto de la nota y porcentaje
nota_ponderada(E, C, R) :- calificacion(E, C, N, P), R is N * P.

% Lista de calificaciones
lista_notas(E, C, L) :- bagof(N, nota_ponderada(E, C, N), L).

% Nota final por estudiante
nota_final(E, C, Nf) :- lista_notas(E, C, L), suma(L, S), Nf is S.