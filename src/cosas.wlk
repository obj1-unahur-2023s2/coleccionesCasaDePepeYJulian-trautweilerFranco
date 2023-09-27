object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesas {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebolla {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object computadora {
	method precio() { return 500 * dolar.precioDeVenta() }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object dolar {
	method precio() { return 730 }
	
	method precioDeVenta(){
		return self.precio()
	}
	
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object packComida {
	var comida
	var aderezo
	method comidaPack(unaComida){
		comida = unaComida
	}
	
	method aderezo(unAderezo){
		aderezo = unAderezo
	}

	method precio() {
		return comida.precio() + aderezo.precio()
	}
	
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}


























