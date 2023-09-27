import cosas.*
import cuentas.*

object casaDePepeYJulian {
	var cuenta
	const cosas = []
	
	method asignarCuenta(unaCuenta){
		cuenta = unaCuenta
	}
	
	method comprar(cosa){
		0.max(cuenta.saldo() - cosa.precio())
		return cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	
	method tieneComida(){
		return cosas.any({p => p.esComida()})
	}
	
	method vieneDeEquiparse(){
		const ultimaCosaComprada = cosas.last()
        return (ultimaCosaComprada.esElectrodomestico() or ultimaCosaComprada.precio() > 50000)
	}
	
	method esDerrochona(){
		const total = cosas.sum({p => p.precio()})	
		return total >= 90000
	}
	
	method compraMasCara(){
		return cosas.max({p =>p.precio()})
	}
	
	method electrodomesticosComprados(){
		return cosas.find({p => p.esElectrodomestico()})
	}
	
	method malaEpoca(){
		return cosas.all({p => p.esComida()})
	}
	
	method queFaltaComprar(lista){
		return lista.filter({p => !cosas.contains(p)})
	}
	
	method faltaComida(){
		const cosasCompradas = cosas.filter({p=> p.esComida()})
		return cosasCompradas.size() >= 2
	}
	
	method gastar(importe){
		return 0.max(cuenta.saldo() - importe)
	}
	
	method dineroDisponible(){
		return cuenta.saldo()
	}
}
