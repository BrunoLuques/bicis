class Bici {
	const property rodado = null
	const property largo = null
	const property marca = null
	
	
	method altura(){return rodado * 2.5 + 15}
	method velocidadDeCrucero(){return if(largo > 1.2) rodado + 6 else rodado + 2}
	method carga(){}
	method peso(){}
		
}