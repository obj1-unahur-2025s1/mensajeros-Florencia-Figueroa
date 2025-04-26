import mensajeros.*
import vehiculosYPaquetes.*
import destinos.*



object empresa {
    const mensajeros = #{}

    method contratar(unMensajero){
        mensajeros.add(unMensajero)
    }
    method despedir(unMensajero){
        mensajeros.remove(unMensajero)
    }
    method despedirATodos(){
        mensajeros.clear()
    }
    method esGrandeLaMensajeria(){
        mensajeros.size() > 2
    }
    method elPrimerMensajeroPuedeEntregar(unLugar){
        paquete.sePuedeEntregar(mensajeros.first(), unLugar)
    }
    method pesoDelUltimoMensajero(){
        mensajeros.last().peso()
    }
}