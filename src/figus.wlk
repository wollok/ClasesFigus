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
	
}


class Pais{
	
	const jugadores = []
	
	method obtenerFigurita(figu){
		jugadores.add(figu)
	}
	
	method cantidadFigus() = jugadores.size()
	
	method contieneA(j1) = jugadores.contains(j1)
	
}
