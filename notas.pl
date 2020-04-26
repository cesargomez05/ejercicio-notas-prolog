% Estudiantes
estudiante(juan).
estudiante(carlos).
estudiante(andrea).
estudiate(cesar).

% Cursos
curso(informatica).
curso(programacion).

% Relacion estudiantes - curso
es_estudiante(juan, informatica).
es_estudiante(carlos, informatica).
es_estudiante(andrea, informatica).

es_estudiante(juan, programacion).
es_estudiante(carlos, programacion).
es_estudiante(andrea, programacion).
es_estudiante(cesar, programacion).

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

% Fallas
fallas(juan, programacion).
fallas(juan, programacion).
fallas(carlos, programacion).

% Producto de la nota y porcentaje
nota_ponderada(E, C, R) :- calificacion(E, C, N, P), R is N * P.

%notas(E, C) :- findall(R , nota_ponderada(E, C, R),L).
%suma([],0).
%suma([N|Y],M):- suma(Y, M1), M is M1 + N.
%nota_final(E, C, N) :- findall(R, nota_ponderada(E, C, R), N).

%suma([],0).
%suma([N|Y],M):- suma(Y, M1), M is M1 + N.

%resultado(E, C, N) :- findall( Y, calificacion(E,C,N,P), Resultado).
%resultado(E, C, L) :- findall(R, nota_ponderada(E, C, R), L).
