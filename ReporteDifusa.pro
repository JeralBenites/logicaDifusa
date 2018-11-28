/*****************************************************************************

		Copyright (c) My Company

 Project:  LOGICDIFUSADUCHA
 FileName: REPORTEDIFUSA.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "logicdifusaducha.inc"

domains
i=integer
r=real
database-dato
datos(i,r,r,r)
predicates
nondeterm vf(i)
nondeterm vok(i)
nondeterm vc(i)

nondeterm cb(r)
nondeterm cok(r)
nondeterm cf(r)


borardifu

nondeterm operacion1(i,r,r,r)
nondeterm operacion2(i,r,r,r)

nondeterm main(i,r,r,r)

clauses
      
     
vf(X):- X<10,N1=1,write(N1);
           10<=X,X<=35,N1=((35-X)/25),write(N1);
           X>35,N1=0,write(N1).

vok(X):-X<34,N1=0,write(N1);
           34<=X,X<36,N1=((X/2)-17),write(N1);
           36<=X,X<=38,N1=(19-(X/2)),write(N1);
           X>38,N1=0,write(N1).

         
vc(X):-X<37,N1=0,write(N1);
          37<=X,X<=60,N1=((X-37)/23),write(N1);
          X>60,N1=1,write(N1).
        

  
cb(Y):- Y<9,N1=1,write(N1);
           9<=Y,Y<=12,N1=(4-(Y/3)),write(N1);
           Y>12,N1=0,write(N1).
        
cok(Y):-Y<11,N1=0,write(N1);
           11<=Y,Y<12,N1=(Y-11),write(N1);
           12<=Y,Y<=13,N1=(13-Y),write(N1);
           Y>13,N1=0,write(N1).
          
cf(Y):-   Y<12,N1=0,write(N1);
          12<=Y,Y<=15,N1=((Y/3)-4),write(N1);
          Y>15,N1=1,write(N1).
          
         
operacion1(X,Y1,Y2,Y3):- X>10,X<35,vf(X),nl,cb(Y1),write("pa"),nl,cok(Y2),write("pm"),nl,cf(Y3),write("z");
                         X>34,X<38,vok(X),nl,cb(Y1),write("pp"),nl,cok(Y2),write("z"),nl,cf(Y3),write("np");
                         X>37,X<60,vc(X),nl,cb(Y1),write("z"),nl,cok(Y2),write("nm"),nl,cf(Y3),write("na").
          
operacion2(X,Y1,Y2,Y3):-X>10,X<35,vf(X),nl,cb(Y1),write("z"),nl,cok(Y2),write("z"),nl,cf(Y3),write("na");
                        X>34,X<38,vok(X),nl,cb(Y1),write("pp"),nl,cok(Y2),write("z"),nl,cf(Y3),write("np");
                        X>37,X<60,vc(X),nl,cb(Y1),write("pa"),nl,cok(Y2),write("z"),nl,cf(Y3),write("z").
  
                       


 borardifu:-Cg1=(0.25+0.5833)/2,
           A1=0.25*1/3,
           Cg2=0.5+0.1*2/3,
           A2=0.1*0.4,
           Cg3=0.8,
           A3=0.4*0.4,
           CG=(Cg1*A1+Cg2*A2+Cg3*A3)/(A1+A2+A3),write(CG).
                       
       

main(X,Y1,Y2,Y3):-datos(X,Y1,Y2,Y3),write("PROGRAMACION LOGICA LOGICA DIFUZA(DUCHA)"),nl,
      write(":::::::::::::::::::::::::::::::"),nl,
     operacion1(X,Y1,Y2,Y3),nl,nl,operacion2(X,Y1,Y2,Y3),nl,nl,
     
     write("En Conclusion se saca que hay que abrir bastante "),borardifu,nl,
     write("el agua caliente y mantener  en el valor estandar la aperura del agua fria ",0),nl,fail.
     



      
goal
consult("Dato.dat",dato),
main(X,Y1,Y2,Y3).
