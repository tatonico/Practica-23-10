import elementos.*
import example.*
import legion.*
import barrio.*
import estados.*

class Adulto {
	var intentos
	method asustarseDe(nene){
		if(nene.tieneMasDeQuince()){
			intentos ++
		}
		if(self.seAsustaDeNene(nene)){
			return self.obtenerTolerancia()/2
		}
		return 0
	}
	method seAsustaDeNene(nene){
		return self.obtenerTolerancia() < nene.obtenerCapacidadDeAsustar()
	}
	
	method obtenerTolerancia(){
		return intentos * 10
	}
}
class Abuelo inherits Adulto{
	override method seAsustaDeNene(nene){
		return true
	}
	override method asustarseDe(nene){
		return super(nene)/2
	}
}

class AdultoNecio inherits Adulto{
	override method seAsustaDeNene(nene){
		return false
	}
}