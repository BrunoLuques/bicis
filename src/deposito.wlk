import bicis.*
import accesorios.*

class Deposito { 
	var property bicis = []
	
	method bicisRapidas(){
		return bicis.filter({ bici => bici.velocidadDeCrucero() > 25})
	}
	
	method marcaDeBicis(){
		return bicis.map({ bici => bici.marca()}).asSet()
	}
	
	method esDepositoNocturno(){
		return bicis.all({ bici => bici.tieneLuz()})
	}
	
	method tieneAlgunaBiciQuePuedeLlevar(unaCarga){
		return bicis.any({ bici => bici.carga() > unaCarga})
	}
	
	method marcaDeBiciRapida(){
		return bicis.max({ bici => bici.velocidadDeCrucero()}).marca()
	}
	
	method cargaTotalBicisLargas(){
		return bicis.filter({ bici => bici.largo() > 170}).sum({ bici => bici.carga()})
	}
	
	method bicisSinAccesorios(){
		return bicis.count({ bici => bici.accesorios().size() == 0 })
	}
	
	method bicisCompanieras(unaBici){
		return bicis.find({ bici => bici.marca() == unaBici.marca() and  bici.largo().between(unaBici.largo()-10,unaBici.largo()+10)})
	}
}




/* 
Van algunos desafíos, que son eso, desafíos, se escapan del contenido standard de la materia. 
Tener algunas nociones sobre estructuras de datos puede servir para resolverlos.

Hay compañeras
Poder preguntarle a un depósito si tiene algún par de bicis compañeras o no; se espera un booleano como respuesta.

Las parejas de compañeras -- mucho más difícil
poder pedirle a un depósito los pares de bicis compañeras. Se espera una colección de pares 
de bicis, se puede crear una clase ParDeBicis o representar un par de bicis mediante una lista.

Se hizo la luz
poder preguntarle a un depósito si "se hizo la luz". Esto es verdadero si a partir de que entró 
la primer bici con luz, todas las bicis que entraron después también tienen luz. Obviamente, para resolver 
esto tienen que memorizar las bicis en alguna forma que permita saber en qué orden se fueron agregando*/







