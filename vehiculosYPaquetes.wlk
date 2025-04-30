import destinos.*

//VEHICULOS
object bici {
  method peso() = 5
}

object camion {
  var cantidadAcoplados = 1
  method peso(){return cantidadAcoplados * 500}
  method ampliar(){cantidadAcoplados = cantidadAcoplados + 1}
}


//PAQUETES
object paquete {
  var destino = puerteBrooklyn
  var pagado = true

  method estaPago()= pagado
  method noEstaPago() = false
  method destino(nuevo){destino = nuevo}
  method sePuedeEntregar(mensajero) = self.estaPago() and destino.puedePasar(mensajero)
}


object paquetito {
  method sePuedeEntregar(mensajero) = true
  method estaPago() = true
}

object paqueton {
  var pagado = 0
  var precio = 0
  const destinos = [laMatrix, puerteBrooklyn]
  method pasaPorTodos(mensajero) = destinos.all({d=>d.puedePasar(mensajero)})
  method sePuedeEntregar(mensajero) = self.estaPago() and pasaPorTodos(mensajero)
  method estaPago() = true
  method precio()= destinos.size() * 100
  method pagar(importe){pagado = pagado + importe} 


  
}