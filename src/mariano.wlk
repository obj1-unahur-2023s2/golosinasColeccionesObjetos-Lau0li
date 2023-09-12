import sabores.*
import golosinas.*

object mariano {
	var bolsaDeGolosinas = []
	
	method bolsaDeGolosinas() = bolsaDeGolosinas
	method comprarUnaGolosina(unaGolosina){
		bolsaDeGolosinas.add(unaGolosina)
	}
	method desecharUnaGolosina(unaGolosina){
		bolsaDeGolosinas.remove(unaGolosina)
	}	
	method cantidadDeGolosinasCompradas() = bolsaDeGolosinas.size()
	method tieneLaGolosina(unaGolosina) = bolsaDeGolosinas.contains(unaGolosina)
	method probarGolosinas(){
		bolsaDeGolosinas.forEach({ n => n.recibirMordisco()}) 
	}
	method hayGolosinaSinTACC() = bolsaDeGolosinas.any({ n => !n.tieneGluten()})
	method preciosCuidados() = bolsaDeGolosinas.all({n => n.precio() <= 10})
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({n => n.sabor().equals(unSabor)})
	method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter({n => n.sabor().equals(unSabor)})

}

