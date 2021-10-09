import Accesorios.*
import deposito.*

class Bici {
	var property rodado = null
	var property largo = null
	var property marca = ""
	var property accesorios = []
	
	
	method altura(){return rodado * 2.5 + 15}
	method velocidadDeCrucero(){return if(largo > 120) rodado + 6 else rodado + 2}
	method carga(){ return accesorios.sum({accs => accs.carga()})}
	method peso(){return rodado/2 + accesorios.sum({accs => accs.peso()}) }
	method tieneLuz(){ return accesorios.any({ accs => accs.esLuminoso()})}
	method cantidadDeAccesoriosLivianos(){ return accesorios.count({accs => accs.peso() < 1})}
		
}

