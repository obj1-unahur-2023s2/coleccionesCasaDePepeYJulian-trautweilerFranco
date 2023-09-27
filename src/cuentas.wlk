object corriente {
	
	var saldo
	
	method saldo(){
		return saldo
	}
	
	method depositar(deposito){
		saldo = saldo + deposito
	}
	
	method extraer(importe){
		saldo = 0.max(saldo - importe)
	}	
}

object gastos {
	var saldo
	
	method saldo(){
		return saldo
	}
	
	method depositar(deposito){
		saldo += deposito - 200
	}
	
	method extraer(importe){
		if (importe < 10000){
			saldo -= importe - 200
		} else {
			saldo -= importe - (importe * 0.02)
		}
	}	
}

object combinada {
	var saldo
	var cuentaPrimaria
	var cuentaSecundaria
	var saldoPrim
	var saldoSec
	
	method cuentaPrimaria(unaCuenta){
		cuentaPrimaria = unaCuenta
	}

	method cuentaSecundaria(unaCuenta){
		cuentaSecundaria = unaCuenta
	}
	
	method saldoPrim(){
		saldoPrim = cuentaPrimaria.saldo()
		return saldoPrim
	}
	
	method saldoSec(){
		saldoSec = cuentaSecundaria.saldo()
		return saldoSec
	}
		
	method saldo(){
		saldo = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
		return saldo
	}
	
	method depositar(deposito){
		saldoPrim += deposito
	}
	
	method extraer(importe){
		if (saldoPrim > importe){
			saldoPrim -= importe 
		}else{
			saldoSec -= importe
		}
	}	
}
