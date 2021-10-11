import bicis.*
import deposito.*

class Farolito{
	method peso() {return 0.5}	
	method carga() {return 0}
	method esLuminoso() {return true}
}

class Canasto {
	var property volumen = null 
	
	method peso() {return volumen / 10}	
	method carga() {return volumen*2}
	method esLuminoso() {return false}
}

class MorralDeBici {
	var property largo = null
	var property tieneOjoDeGato = null
	
	method peso() {return 1.2}	
	method carga() {return largo / 3}
	method esLuminoso() {return tieneOjoDeGato}
}


/*5. Una pregunta:
	¿Qué agregados o cambios deben hacerse para agregar
	un nuevo tipo de accesorio? P.ej. el porta-botellitas de agua, 
	un canasto en la parte de atrás, luces para poner en las ruedas.
	
	Indicar qué hay que agregar, y qué hay que tocar. Relacionar con los conceptos de "contrato" 
	y / o "polimorfismo". En dos frases, bien cortito.


Para agregar un nuevo tipo de accesorio, necesitamos crear una nueva clase, 
	que respete el contrato que lleva el resto de
	los accesorios para poder mantener el polimorfismo.- 
*/

