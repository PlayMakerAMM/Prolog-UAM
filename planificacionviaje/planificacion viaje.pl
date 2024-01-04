transporte(autobus,puebla,300).
transporte(autobus,oaxaca,400).
transporte(autobus,gdl,400).
transporte(autobus,cancun,1500).
transporte(auto,puebla,250).
transporte(auto,oaxaca,300).
transporte(auto,gdl,350).
transporte(auto,cancun,500).
transporte(uberviajes,puebla,700).
transporte(uberviajes,oaxaca,1000).
transporte(uberviajes,gdl,1200).
transporte(uberviajes,cancun,1300).

alojamiento(posada,puebla,100).
alojamiento(posada,oaxaca,300).
alojamiento(posada,gdl,350).
alojamiento(posada,cancun,800).
alojamiento(hotel_3,puebla,300).
alojamiento(hotel_3,oaxaca,500).
alojamiento(hotel_3,gdl,400).
alojamiento(hotel_3,cancun,1000).
alojamiento(hotel_5,puebla,1500).
alojamiento(hotel_5,oaxaca,800).
alojamiento(hotel_5,gdl,2300).
alojamiento(hotel_5,gdl,2500).

manutencion(puebla,800).
manutencion(oaxaca,1200).
manutencion(gdl,1000).
manutencion(cancun,1500).

plan_viajar(Lugar,Presupuesto,Trasporte,Alojamiento,Ndias):-
    transporte(Trasporte,Lugar,Costo),alojamiento(Alojamiento,Lugar,Costo1),
    manutencion(Lugar,Costo2),
    Sum is Costo1 + Costo2, 
    X is Presupuesto // Sum, Y is Sum * X, 
    Sum2 is Costo + Y,Ndias is Presupuesto // Sum2.

suma(X):-manutencion(pais,X).

% (reglagood)
% plan_viajar(Lugar,Presupuesto,Trasporte,Alojamiento,Ndias):-transporte(Trasporte,Lugar,Costo),alojamiento(Alojamiento,Lugar,Costo1),manutencion(Lugar,Costo2),Sum
% is Costo2 + Costo1 + Costo, Ndias is Presupuesto // Sum.


