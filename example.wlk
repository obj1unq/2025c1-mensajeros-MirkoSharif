object empresa {

  method entregaDePaqueteConMensajeroAlDestino(mensajero, destino) {
    paquete.pago() && destino.puedeEntregar(mensajero)
  }
}

object paquete {
  var pago = false

  method pago(_pago) {
    pago = _pago
  }

  method pago() = pago

}

object puenteDeBrooklyn {
  const pesoPermitido = 1000

  method puedeEntregar(mensajero) = mensajero.peso() <= pesoPermitido
}

object laMatrix {
  
  method puedeEntregar(mensajero) = mensajero.llamar() 
  
}

object chuckNorris {
  const peso = 900
  const llamar = true
	
  method peso() = peso
	
  method llamar() = llamar
}

object neo {
  const peso = 0	
  var llamar = false

  method peso() = peso

  method llamar(_llamar) {
    llamar = _llamar
  }

  method llamar() = llamar
}

object lincolnHawk {
  var pesoTotal = 0
  const llamar = false
  var pesoLincoln = 0
  var vehiculo = bicicleta

  method pesoLincoln(_pesoLincoln) {
    pesoLincoln = _pesoLincoln
  }

  method vehiculo(_vehiculo) {
    vehiculo = _vehiculo
  }

  method llamar() = llamar

  method peso() {
	  pesoTotal = pesoLincoln + vehiculo.peso()
    return pesoTotal
  }
 
}

object bicicleta {
  const peso = 10

  method peso() = peso
}

object camion {
  const pesoBase = 500
  const pesoAcoplado = 500
  var pesoTotal = pesoBase
  var nroAcoplado = 0

  method nroAcoplado(_nroAcoplado) {
    nroAcoplado = _nroAcoplado
  }

  method peso() {
    pesoTotal = pesoBase + (pesoAcoplado * nroAcoplado)
    return pesoTotal
  }
}