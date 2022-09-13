object album {
	
	const figuritasTotales = 700
	const figuritas = []
	 
	method cantidadFaltantes() = figuritasTotales 
		- figuritas.size()
	
	method obtenerFigurita(figu){
		figuritas.add(figu)
	}
	
	method cantidadFigus(pais) =
		figuritas.count({f=>f.pais() == pais})
	
}

class Jugador {
	var property pais
	
	method mismoPaisQue(unJugador) = pais == unJugador.pais() 
}



