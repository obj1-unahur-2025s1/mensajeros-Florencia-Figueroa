
import vehiculosYPaquetes.*
import destinos.*

object roberto {
    var vehiculo = bici   //-->bici o camion

    method peso(){
      return 90 + vehiculo.peso()
      }
    method vehiculo(unVehiculo){
      vehiculo = unVehiculo
    }
    method puedeLlamar()= false
}


object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}

object neo {
  var tieneCredito = true

  method peso() {return 0}
  method cambiarCredito(){
    tieneCredito = !tieneCredito
  }
}
