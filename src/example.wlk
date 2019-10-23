import elementos.*
import adulto.*
import legion.*
import barrio.*
import estados.*

class Nino{
	var elementosPuestos
	var actitud
	var caramelos
	var estado
	constructor(){
		estado = sano
	}
	
	method obtenerCapacidadDeAsustar(){
		return elementosPuestos.sum{elemento => elemento.puntajeAsusta()} * actitud
	}
	
	method caramelos() = return caramelos
	method elementos() = return elementosPuestos
	
	method asustarA(persona){
		if(estado.permiteAsustar(self)){
			self.incrementarCaramelos(persona.asustarseDe(self))
		}
	}
	
	method tieneMasDeQuince(){
		return caramelos > 15
	}
	
	method tieneMasDeDiezCaramelos(){
		return caramelos > 10
	}
	
	method incrementarCaramelos(cantidad){
		caramelos += cantidad
	}
	
	method comerseNCaramelos(num){
		if(caramelos<num){
			throw new Exception (message = "No tenes tantos caramelos gordito")
		}else{
			estado.come(num, self)
		}
	}
	
	method seCome(num){
		caramelos -= num
	}
	method reducirActitudAMitad(){
		actitud = actitud/2
	}
	method empacharse(){
		estado = empachado
	}
	method quedarseEnCama(){
		estado = enCama
	}
	method quedarseSinActitud(){
		actitud = 0
	}
}