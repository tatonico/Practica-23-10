import example.*
import adulto.*
import legion.*
import barrio.*
import estados.*

object Maquillaje {
	var asustaTanto = 3
	method cambiarAsustaTanto(num){
		asustaTanto=num
	}
	
	method puntajeAsusta(){
		return asustaTanto
	}
}

class Traje{
	var representaA
	method puntajeAsusta(){
		if(self.esTierno()){
			return 2
		}else if(self.esTerrorifico()){
			return 5
		}
		return 0
	}
	
	method esTierno() {
		return representaA == "Winnie" || representaA == "Sullivan"
	}
	method esTerrorifico() {
		return representaA == "Jason" || representaA == "Bush"
	}
}
