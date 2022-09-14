object album {
	
	const figuritasTotales = 700
	const paises = []
	 
	method cantidadFaltantes() = figuritasTotales 
		- paises.sum({p=>p.cantidadFigus()})
	

	method agregarPais(pais){
		paises.add(pais)
	}
	
	method sonDelMismoPais(j1,j2) = 
		paises.any({p=> p.contieneA(j1) && p.contieneA(j2)})
	
	
	method paisConMasFiguritas() =
		paises.max{p=>p.cantidadFigus()} 
		
	method sonTodosValiosos(continente) = 
		self.jugadoresDe(continente).all{j=>j.esValioso()  }
	
	method jugadoresDe(continente) =
		self.paisesDe(continente).flatMap{p=>p.jugadores()}
	 
	method paisesDe(continente) =  
		paises.filter{p => p.continente() == continente} 
	
	
	method paisMasValioso() = 
		paises.max{p=>p.valoracionPromedio()}
}


class Pais{
	
	const jugadores = []
	const property continente
	
	method obtenerFigurita(figu){
		jugadores.add(figu)
	}
	
	method cantidadFigus() = jugadores.size()
	
	method valoracionPromedio() 
		= jugadores.sum{j=>j.valoracion()}/self.cantidadFigus()	

	method jugadores() = jugadores
	
	method contieneA(j1) = jugadores.contains(j1)
	
}

class Jugador {
	
	var valoracion
	
	method valoracion() = valoracion
	
	method esValioso() = valoracion > 8
}
