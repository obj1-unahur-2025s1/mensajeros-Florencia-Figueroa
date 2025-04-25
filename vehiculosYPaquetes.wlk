object bici {
  method peso() = 5
}

object camion {
  var cantidadAcoplados = 0

  method peso(){return cantidadAcoplados * 500}
  method cantidadAcoplados(unaCantidad) {
    cantidadAcoplados = unaCantidad
  }
}