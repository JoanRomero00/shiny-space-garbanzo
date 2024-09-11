:-dynamic(padres/3). %El predicado es dinámico

inicio:-abrir_base,
        agregarNuevo,
        guardar.

abrir_base:-consult('bd.txt').

agregarNuevo:-write('Ingrese hijo:'), read(H), 
              write('Ingrese madre:'), read(M), 
              write('Ingrese padre:'), read(P),
              assert(padres(H,M,P)).

guardar:-tell('bd.txt'), listing(padres), told.