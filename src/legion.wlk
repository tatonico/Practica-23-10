import elementos.*
import adulto.*
import example.*
import barrio.*
import estados.*

class Legion {
	var miembros
	
	constructor(_miembros){
		if (_miembros.size()>1){
			miembros = _miembros
		} else {
			throw new Exception (message = "No suficiente")
		}
	}
	method capacidadDeAsustar(){
		return miembros.sum{miembro => miembro.obtenerCapacidadDeAsustar()}
	}
	
	method caramelosDeLegion(){
		return miembros.sum{miembro => miembro.caramelos()}
	}
	
	method asustarA(persona){
		self.obtenerLider().incrementarCaramelos(self.caramelosAIncrementar(persona))
	}
	
	method caramelosAIncrementar(persona){
		return miembros.sum{miembro => miembro.asustarA(persona)}
	}
	
	method obtenerLider(){
		return miembros.max{miembro => miembro.obtenerCapacidadDeAsustar()}
	}
}
