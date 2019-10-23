import elementos.*
import adulto.*
import legion.*
import barrio.*
import example.*

object sano{
	method come(num, nene){
		nene.seCome(num)
		if(num>10){
			nene.empacharse()
			nene.reducirActitudAMitad()
		}
	}
	method permiteAsustar() = return true
}

object empachado{
	method come(num, nene){
		nene.seCome(num)
		if(num>10){
			nene.quedarseEnCama()
			nene.quedarseSinActitud()
		}
	}
	method permiteAsustar() = return true
}

object enCama{
	method come(_, nene){
		nene.seCome(0)
	}
	method permiteAsustar() = return false
}
