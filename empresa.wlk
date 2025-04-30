import mensajeros.*
import vehiculosYPaquetes.*
import destinos.*



object empresa {
    const mensajeros = [roberto, neo, chuckNorris]
    const enviados = []
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
    method entregaRapida() = paquete.sePuedeEntregar(mensajeros.head())
    method pesoDelUltimoMensajero()=  mensajeros.last().peso()


    method puedeEntregar(unPaquete)= mensajeros.any{p=>unPaquete.sePuedeEntregar(p)}
    method losQuePuedenEntregar(unPaquete) = mensajeros.filter{p=>unPaquete.sePuedeEntregar(p)}
    method tieneSobrepeso() = self.pesoTotal() / self.cantidadMensajeros() > 500
    method pesoTotal() = mensajeros.sum({p=>p.peso()})
    method cantidadMensajeros() = mensajeros.size()
    method enviar(unPaquete){if(self.puedeEntregar(unPaquete)) 
            enviados.add(unPaquete)}
    method facturacion() = enviados.sum({p=>p.precio()})
    method precio() = 50
    
}