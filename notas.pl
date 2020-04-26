% Regla para sumar los valores del array
suma([],0).
suma([N|Y],M):- suma(Y, M1), M is M1 + N.

% Regla para obtener la longitud de un elemento
long([],0).
long([_|Y],M):- long(Y, M1), M is M1 + 1.

% estudiante(Nombre)
estudiante(andrea).
estudiante(carlos).
estudiante(cesar).
estudiante(juan).

% curso(Nombre)
curso(informatica).
curso(programacion).

% es_estudiante(Estudiante, Curso)
es_estudiante(andrea, informatica).
es_estudiante(carlos, informatica).
es_estudiante(juan, informatica).
es_estudiante(andrea, programacion).
es_estudiante(carlos, programacion).
es_estudiante(cesar, programacion).
es_estudiante(juan, programacion).

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
falla(juan, informatica).
falla(carlos, programacion).
falla(carlos, programacion).
falla(carlos, programacion).
falla(cesar, programacion).

% numero_fallas(Estudiante, Curso, Fallas)
numero_fallas(E, C, F) :- bagof(1, falla(E, C), L), long(L, S), F is S.

% reprueba_por_fallas(Estudiante, Curso)
reprueba_por_fallas(E, C) :- numero_fallas(E, C, F), F >= 3.

% reprueba_por_nota(Estudiante, Curso)
reprueba_por_nota(E, C) :- nota_final(E, C, Nf), Nf =< 3.

aprueba_curso(E, C, M) :-
    es_estudiante(E, C),
    not(estudiante(E)) -> M = 'El estudiante no existe';
    not(curso(C)) -> M = 'El curso no existe';
    not(es_estudiante(E, C)) -> M = 'El estudiante no se encuentra asociado al curso';
    reprueba_por_fallas(E, C) -> M = 'Reprobo el curso por inasistencia';
    reprueba_por_nota(E, C) -> M = 'Reprobo el curso por ponderacion de nota';
    true -> M = 'Has aprobado el curso'.