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
		
	method paisConMasFiguritas() =
		self.paises().max{p=>self.cantidadFigus(p)}
	
	method paises() = figuritas.map({f=>f.pais()}).asSet()

	method paisMasValioso() = 
		self.paises().max{p=>self.valoracionPromedio(p)}
	
	method valoracionPromedio(pais) =
	 	self.jugadoresDePais(pais).sum{j=>j.valoracion()} / 
	 	self.jugadoresDePais(pais).size()
	 	
	 	 
	method sonTodosValiosos(continente) = 
		self.jugadoresDe(continente).all{j=>j.esValioso()  }
	
	method jugadoresDe(continente) =
		figuritas.filter{f => f.continente() == continente} 

	method jugadoresDePais(pais) =
		figuritas.filter{f => f.pais() == pais} 

}

class Jugador {
	var property pais
	var valoracion
	
	method valoracion() = valoracion
	
	method esValioso() = valoracion > 8
	
	method mismoPaisQue(unJugador) = pais == unJugador.pais() 
	
	method continente() = pais.continente()
}


class Pais{
	
	const property continente
	
}


