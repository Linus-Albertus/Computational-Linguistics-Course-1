palabra(articulo,la).
palabra(articulo,una).
palabra(nombre,caballota).
palabra(nombre,'niña buena').
palabra(nombre, 'niña')
palabra(adjetivo,tremenda).
palabra(adjetivo,'estúpida').
palabra(preposicion,a).
palabra(verbo,'le dijo sus cuatro cosas').
palabra(verbo,'sacudió').

oracion(Palabra1,Palabra2,Palabra3,Palabra4,Palabra5,Palabra6,Palabra7,Palabra8) :-
  palabra(articulo,Palabra1),
  palabra(adjetivo,Palabra2),
  palabra(nombre,Palabra3),
  palabra(verbo,Palabra4),
  palabra(preposicion,Palabra5),
  palabra(articulo,Palabra6),
  palabra(adjetivo,Palabra7),
  palabra(nombre,Palabra8).
