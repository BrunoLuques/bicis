import bicis.*
import Accesorios.*

class Deposito { 
	var property bicis = []
	
	method bicisRapidas(){
		return bicis.filter({bici => bici.velocidadDeCrucero() > 25})
	}
	
	method marcaDeBicis(){
		return bicis.map({bici => bici.marca()}).asSet()
	}
	
	method esDepositoNocturno(){
		return bicis.all({bici => bici.tieneLuz()})
	}
	
	method tieneAlgunaBiciQuePuedeLlevar(unaCarga){
		return bicis.any({bici => bici.carga() > unaCarga})
	}
	
	method marcaDeBiciRapida(){
		return bicis.max({bici => bici.velocidadDeCrucero()}).marca()
	}
	
	method cargaTotalBicisLargas(){
		return bicis.filter({bici => bici.largo() > 170}).sum({ bici => bici.carga()})
	}
	
	method bicisSinAccesorios(){
		return bicis.count({bici => bici.accesorios().size() == 0 })
	}
	
	method haybicisCompanieras(unaBici){
		return  bicis.any({bici => bici.esCompanieraDe(unaBici)})
	}
	
}




