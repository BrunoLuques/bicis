class Farolito {
	method peso(){return 0.5}	
	method carga(){return 0}
	method esLuminoso(){return true}
}

class Canasto {
	var property volumen = null 
	
	method peso(){return volumen/10}	
	method carga(){return volumen*2}
	method esLuminoso(){return false}
}

class MorralDeBici {
	var property largo = null
	var property tieneOjoDeGato = null
	
	method peso(){return 1.2}	
	method carga(){return largo/3}
	method esLuminoso(){return tieneOjoDeGato}// comentario
}


/*
5. Una pregunta
	¿Qué agregados o cambios deben hacerse para agregar
	un nuevo tipo de accesorio? 
	P.ej. el porta-botellitas de agua, un canasto en la parte de atrás, 
	luces para poner en las ruedas.
Indicar qué hay que agregar, y qué hay que tocar. Relacionar con los conceptos de "contrato" 
	y / o "polimorfismo". En dos frases, bien cortito.
Incluir la respuesta en el archivo en el que se definen los accesorios. Pónganlo como se indica 
abajo así lo toma como comentario y no afecta al programa.


Para agregar otros accesorios hay que crearlos como objetos polimorficos para las bicis,
ya que cada accesorio tiene que cumplir con su contrato 
* se comporta de manera distinta y esto impide que sean una clase.
* 
Para agregar otros accesorios hay que definirlos como objetos polimorficos para la bicis
* 
Para agregar otros accesorios hay que crear objectos con el mismo contrato que los anteriores
*  accesorios para mantener el polimorfismo con las bicis 
*/
