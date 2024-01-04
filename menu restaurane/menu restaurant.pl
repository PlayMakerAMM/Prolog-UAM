sumar(X,Y,Z,Res):-Res is X+Y+Z.
menor(X, Y):- X < Y.

carnes(anvorguesa).
carnes(lomo_de_cerdo).
carnes(arrachera).
carnes(churrasco).
carnes(rib_eye).
pescados(filete).
pescados(coctel_camarones).
pescados(sushi).
pescados(caldo_pescado).
pescados(bacalao).
ensaladas(salada).
ensaladas(manzana).
ensaladas(vinagreta_naranja).
ensaladas(finas_hierbas).
ensaladas(adereso_dulce).
postres(gelatina_mosaico).
postres(pastel_tres_leches).
postres(flan).
postres(tiramisu).
postres(pay_limon).
entradas(chivichangas).
entradas(pasta_ligera_cremosa).
entradas(pasta_inglesa).
entradas(lasaña).
entradas(burritos).
bebidas(cafe).
bebidas(te).
bebidas(calpis).
bebidas(ramune).
bebidas(agua).


calorias(anvorguesa,295).
calorias(lomo_de_cerdo,242).
calorias(arrachera,192).
calorias(churrasco,345).
calorias(rib_eye,291).
calorias(filete,232).
calorias(coctel_camarones,170).
calorias(sushi,250).
calorias(caldo_pescado,30).
calorias(bacalao,75).
calorias(salada,100).
calorias(manzana,120).
calorias(vinagreta_naranja,135).
calorias(finas_hierbas,110).
calorias(adereso_dulce,150).
calorias(gelatina_mosaico,86).
calorias(pastel_tres_leches,375).
calorias(flan,146).
calorias(tiramisu,492).
calorias(pay_limon,285).
calorias(chivichangas,244).
calorias(pasta_ligera_cremosa,483).
calorias(pasta_inglesa,185).
calorias(lasaña,135).
calorias(burritos,206).
calorias(cafe,0).
calorias(te,1).
calorias(calpis,110).
calorias(ramune,70).
calorias(agua,0).

plato_principal(X):-carnes(X).
plato_principal(X):-pescados(X).

menu(Principal,Entrada,Ensalada,Postre,Bebida):-plato_principal(Principal),entradas(Entrada),ensaladas(Ensalada),postres(Postre),bebidas(Bebida).
menu_botana(Carne,Postre):-carnes(Carne),postres(Postre).
menu_completo(Entrada,Carne,Postre):-entradas(Entrada),carnes(Carne),postres(Postre).
menu_completo_bebida(Entrada,Carne,Postre,Bebida):-entradas(Entrada),carnes(Carne),postres(Postre),bebidas(Bebida).
menu_vegetariano(Principal,Ensalada,Postre):-plato_principal(Principal),ensaladas(Ensalada),postres(Postre),not(Postre==pastel_tres_leches),not(Postre==flan),not(Postre==tiramisu).








