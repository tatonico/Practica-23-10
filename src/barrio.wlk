import elementos.*
import adulto.*
import legion.*
import example.*
import estados.*

class Barrio {
	var miembros
	method obtenerTopTres(){
		var lista = {}
		var miembroCopia = miembros
		lista.add(self.obtenerMaximo(miembroCopia))
		miembroCopia.remove(self.obtenerMaximo(miembroCopia))
		lista.add(self.obtenerMaximo(miembroCopia))
		miembroCopia.remove(self.obtenerMaximo(miembroCopia))
		lista.add(self.obtenerMaximo(miembroCopia))
		miembroCopia.remove(self.obtenerMaximo(miembroCopia))
		return lista
	}
	
	method obtenerMaximo(miembroCopia){
		return miembroCopia.max{miembro => miembro.caramelos()}
	}
	
	method elementosUsadosPorNinosConMasDeDiezCaramelos(){
		return miembros.filter{miembro => miembro.tieneMasDeDiezCaramelos()}.flatmap{miembro=>miembro.elementos()}.asSet()
	}
}
