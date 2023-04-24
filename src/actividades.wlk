import personajes.*

object ciudad {
	var temperatura = 20
	method getTemperatura(){return temperatura}
	method setTemperatura(tempNueva){temperatura = tempNueva}
}


object basquet {
	var energiaAlterada = 0
	method setEnergia(energiaNueva){energiaAlterada = energiaNueva}
	method realizar(persona, minutos){
		self.setEnergia(persona.getEnergia() - (persona.getEnergia()*1/100))
		if (energiaAlterada > 0){
			persona.setEnergia(energiaAlterada)
			persona.setAct(persona.getAct() + 1)
			persona.setHambre(true)
		}else{
			persona.setEnergia(0)
			persona.setAct(persona.getAct() + 1)
			persona.setHambre(true)
		}
	}
}

object voley {
	var energiaAlterada = 0
	method setEnergia(energiaNueva){energiaAlterada = energiaNueva}
	method realizar(persona, minutos){
		self.setEnergia(persona.getEnergia() - 2*minutos)
		if (energiaAlterada > 0){
			persona.setEnergia(energiaAlterada)
			persona.setAct(persona.getAct() + 1)
			persona.setHambre(true)
		}else{
			persona.setEnergia(0)
			persona.setAct(persona.getAct() + 1)
			persona.setHambre(true)
		}
	}
}

object futbol {
	var energiaAlterada = 10
	method setEnergia(energiaNueva){energiaAlterada = energiaNueva}
	method realizar(persona, minutos){
		self.setEnergia(persona.getEnergia() - energiaAlterada)
		if (energiaAlterada > 0){
			persona.setEnergia(energiaAlterada)
			persona.setAct(persona.getAct() + 1)
			persona.setHambre(true)
		}else{
			persona.setEnergia(0)
			persona.setAct(persona.getAct() + 1)
			persona.setHambre(true)
		}
	}
}

object aerobic {
	var energiaAlterada
	method setEnergia(energiaNueva){energiaAlterada = energiaNueva}
	method realizar(persona, minutos){
		self.setEnergia(persona.getEnergia() + ciudad.getTemperatura()/2)
		persona.setEnergia(energiaAlterada)
	}
}



