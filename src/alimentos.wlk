import colores.*

object agua {
	var energia = 0
	var color 
	var peso
	method getEnergia(){return energia}
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getColor(){return color}
	method setColor(colorNuevo){color = colorNuevo}
	method getPeso(){return peso}
	method setPeso(pesoNuevo){peso = pesoNuevo}
}

object manzana {
	var color = verde
	var energia = color.getEnergia()
	var peso 
	method getEnergia(){return energia}
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getColor(){return color}
	method setColor(colorNuevo){color = colorNuevo}
	method getPeso(){return peso}
	method setPeso(pesoNuevo){peso = pesoNuevo}
}

object mandarina {
	var energia = 0
	var color = naranja
	var peso = 60
	method getEnergia(){return 2 * self.getPeso()}
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getColor(){return color}
	method setColor(colorNuevo){color = colorNuevo}
	method getPeso(){return peso}
	method setPeso(pesoNuevo){peso = pesoNuevo}
}


object banana {
	var energia = 5
	var color = amarillo
	var peso
	method getEnergia(){return energia}
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getColor(){return color}
	method setColor(colorNuevo){color = colorNuevo}
	method getPeso(){return peso}
	method setPeso(pesoNuevo){peso = pesoNuevo}
}
