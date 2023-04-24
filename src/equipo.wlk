import personajes.*

object equipo {
	var der
	var izq
	var dt
	method getDerecho(){return der}
	method setDerecho(nuevoJugador){der = nuevoJugador}
	method getIzquierdo(){return izq}
	method setIzquierdo(nuevoJugador){izq = nuevoJugador}
	method getDt(){return dt}
	method setDt(nuevoJugador){
		if (nuevoJugador.getEnergia() > dt.getEnergia()){
			dt = nuevoJugador
		}
	}
	method rotarJugadores(){
		const jugadorARotar = der
		der = izq
		izq = jugadorARotar 
	}
	method promedioEnergia(){
		return der.getEnergia()+izq.getEnergia()+dt.getEnergia()/3
	}
	method sonFelices(){
		return der.esFeliz() and izq.esFeliz() and dt.esFeliz()
	}
}
