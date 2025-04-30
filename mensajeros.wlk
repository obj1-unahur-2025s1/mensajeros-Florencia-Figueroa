
import vehiculosYPaquetes.*
import destinos.*

object roberto {
    var vehiculo = bici                 //-->bici o camion
    const peso = 80
    method puedeLlamar()= false
    method peso() = peso + vehiculo.peso()
    method vehiculo(unVehiculo){vehiculo = unVehiculo}
}


object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}

object neo {
  var tieneCredito = true
  method peso() = 0
  method puedeLlamar() = tieneCredito
  method cargarCredito(){tieneCredito = true}
  method hablar(){tieneCredito = false}
}
