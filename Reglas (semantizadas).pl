oracion(SV)  -->
  sintagma_nominal(Entidad), sintagma_verbal(Entidad, SV).

sintagma_nominal(SN) --> determinante(_), nombre(SN).
sintagma_adjetival(SA) --> adjetivo(SA).

sintagma_verbal(Entidad, SV) -->
  relacion(Entidad, Atributo, SV), sintagma_adjetival(Atributo).

relacion(Entidad, Atributo, proceso_relacional(Entidad, Atributo)) --> [son].
relacion(Entidad, Atributo, proceso_relacional(Entidad, Atributo)) --> ['están'].
relacion(Entidad, Atributo, proceso_relacional(Entidad, Atributo)) --> ['se ponen'].

determinante(las) --> [las].
determinante(unas) --> [unas].

nombre(naranjas) --> [naranjas].
nombre(manzanas) --> [manzanas].
nombre(peras) --> [peras].
nombre(patillas)  --> [patillas].
adjetivo(rojas) --> [rojas].
adjetivo(suaves) --> [suaves].
adjetivo(dulces) --> [dulces].
