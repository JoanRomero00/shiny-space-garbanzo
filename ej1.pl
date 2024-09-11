:-dynamic(gastos/3).

inicio:-abrir_base,
        write('Ingrese el nombre del deudor:'), read(Pers),
        gastos_persona(Pers).

abrir_base:-consult('ej1.txt').

gastos_persona(Pers):-gastos(Pers, Serv, Monto),
                   write(Serv), write(Monto), nl,
                   fail.

gastos_persona(_).