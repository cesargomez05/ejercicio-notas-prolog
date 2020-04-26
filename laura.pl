estudiante(juan).
estudiante(carlos).
estudiante(andrea).

materia(informatica).

es_estudiante(juan,informatica).
es_estudiante(carlos,informatica).
es_estudiante(andrea,informatica).

notas(juan,[1,3,4,3]).
notas(carlos,[5,3,4,3]).
notas(andrea,[1,1,4,3]).

fallas(juan,5).
fallas(carlos,2).
fallas(andrea,1).

nota(juan, informatica, 3).


falla(X,Y):-
	X =< 3 -> Y = bien;
	X > 3 -> Y = perdida.

asistio(X):-fallas(X,Z),falla(Z,W),W=bien.
perdio_fallas(X):-fallas(X,Z),falla(Z,W),W=perdida.

calificaciones_estudiante(R,N):-notas(R,N).

suma([],0).
suma([N|Y],M):- suma(Y, M1), M is M1 + N.

long([],0).
long([_|Y],M):- long(Y, M1), M is M1 + 1.

promediojuan(M):-calificaciones_estudiante(juan,N), suma(N,S),long(N,T),M is S/T.
promediocarlos(M):-calificaciones_estudiante(carlos,N), suma(N,S),long(N,T),M is S/T.
promedioandrea(M):-calificaciones_estudiante(andrea,N), suma(N,S),long(N,T),M is S/T.
