import alimentos.*
import actividades.*
import colores.*

object martin {
	var tieneHambre = false
	var energia = 100
	var despensa = agua
	var actividadRealizada = 0
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getEnergia(){return energia}
	method setDespensa(alimento) {despensa = alimento}
	method getDespensa(){return despensa}
	method setAct(actNueva) {actividadRealizada = actNueva}
	method getAct() {return actividadRealizada}
	method getHambre(){return tieneHambre}
	method setHambre(valorNuevo){tieneHambre = valorNuevo}
	method esFeliz() {
		return (energia > 80 or actividadRealizada >= 2) and not tieneHambre
	}
	method realizarActividad(actividad,minutos){
		actividad.realizar(self,minutos)
	}
	method alimentarse(){
		energia = energia + despensa.getEnergia()
		self.setDespensa(agua)
		tieneHambre = false
	}
	method pasaElDia(){
		actividadRealizada = 0
		energia = energia + (energia*50/100)		
		if (despensa == manzana and manzana.getColor() == verde){
			manzana.setColor(amarillo)
		}else if(despensa == manzana and manzana.getColor() == amarillo){
			manzana.setColor(rojo)
		}else if(despensa == mandarina and mandarina.getPeso() >= 0){
			const pesoDisminuido = mandarina.getPeso() - mandarina.getPeso()*10/100
			mandarina.setPeso(pesoDisminuido)
		}
		
	
	}
}

object pepe{
	var energia = 77
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getEnergia(){return energia}
	method esFeliz(){return true}
}

object maria{
	var endorfina = 100
	var amuleto = rojo
	method setAmuleto(amuletoNuevo){amuleto = amuletoNuevo}
	method getAmuleto(){return amuleto}
	method getEnergia(){return endorfina*2 + amuleto.getEnergia()}
	method esFeliz(){
		return self.getEndorfina() > amuleto.getEnergia()
	}
	method getEndorfina(){return endorfina}
	method setEndorfina(endorfinaNueva){endorfina = endorfinaNueva}
}


object maia{
	var energia
	var tazasDeCafe
	var tazasDeTe
	method setEnergia(energiaNueva){energia = energiaNueva}
	method getEnergia(){return energia}
	method tomarCafe(){
		tazasDeCafe = tazasDeCafe + 1
		energia = energia*2
	}
	method tomarTe(){
		tazasDeTe = tazasDeTe + 1
		const energiaAlterada = energia - energia/2
		if (energiaAlterada > 0){
			energia = energiaAlterada
		}
	}
}