/*****************************************************************************

		Copyright (c) My Company

 Project:  LOGICDIFUSADUCHA
 FileName: NOTAS.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "logicdifusaducha.inc"

/*Crear un programa para ingresar desde el teclado dos notas validando que la
 nota este en el rango de 0 a 20, una vez validado dividir,
 validar la divisi�n entre cero.*/
 domains
 i=integer
 predicates
 nota(i,i)
 main
 clauses
 main:-write("INGRESE NUMERO 1: "),readint(X),nl,
        write("INGRESE NUMERO 2: "),readint(Y),nl, nota(X,Y).
 
 nota(X,Y):-X<20,X>0,
            Y<20,Y>0,
            write("LA divison de ",X ," Y " ,Y),N1=X/Y, WRITE(N1).
             
 goal
main.
 
 