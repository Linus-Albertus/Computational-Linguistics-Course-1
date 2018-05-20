oracion(o(SN,SV)) -->
    sintagma_nominal(SN,Gen, Num), sintagma_verbal(SV,_, Num).
sintagma_nominal(sn(DET, SN2), Gen, Num) -->
    determinante(DET, Gen, Num), sintagma_nominal2(SN2, Gen, Num).
%sintagma_nominal(sn(SN2), Gen, Num) -->
    %sintagma_nominal2(SN2, Gen, Num).
sintagma_nominal2(sn2(N), Gen, Num) --> nombre(N, Gen, Num).
sintagma_nominal2(sn2(NP), Gen, Num) --> nombrep(NP, Gen, Num).

sintagma_verbal(sv(V), _, Num) --> verbo(V, _, Num).
sintagma_verbal(sv(V, Prep, SN), _, Num) -->
    verbo(V, _, Num), preposicion(Prep), sintagma_nominal(SN, _,_).

determinante(det(el), masculino, singular) --> [el].
determinante(det(un), masculino, singular) --> [un].
determinante(det(los), masculino, plural) --> [los].
determinante(det(unos), masculino, plural) --> [unos].
determinante(det(la), femenino, singular) --> [la].
determinante(det(una), femenino, singular) --> [una].
determinante(det(las), femenino, plural) --> [las].
determinante(det(unas), femenino, plural) --> [unas].
nombre(n(chavista), masculino, singular) --> [chavista].
nombre(n(chavistas), masculino, plural) --> [chavistas].
nombre(n(profesor), masculino, singular) --> [profesor].
nombre(n(profesores), masculino, plural) --> [profesores].
nombre(n(profesora), femenino, singular) --> [profesora].
nombre(n(profesoras), femenino, plural) --> [profesoras].
nombrep(np(maria),femenino, singular) --> [maria].
verbo(v(asusta), _, singular) --> [asusta].
verbo(v(asustan), _, plural) --> [asustan].
preposicion(prep(a)) --> [a].
