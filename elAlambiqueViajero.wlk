object luke {
    var cantidadViajes = 0
    var recuerdo = null
    var vehiculo = alambiqueVeloz

    method cuantosViajes() = cantidadViajes

    method usarVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    method viajar(lugar) {
    if (lugar.puedeLlegar(vehiculo)) {
        cantidadViajes = cantidadViajes + 1
        recuerdo = lugar.recuerdoTipico()
        vehiculo.consumirCombustible()
    }
  }
    method recuerdo() = recuerdo
}


//Lugares
object paris {
    method recuerdoTipico() = "llavero torre eiffel"
    method puedeLlegar(vehiculo) = vehiculo.tieneCombustible()
}

object buenosAires {
    method recuerdoTipico() = "Mate"
    method puedeLlegar(vehiculo) = vehiculo.tieneCombustible()
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo}
    method puedeLlegar(vehiculo) = vehiculo.tieneCombustible()
}

object lasVegas {
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo) = homenaje.puedeLlegar(vehiculo)
}

//Vehículos
object alambiqueVeloz {
    var combustible = 20
    const rapido = true
    const consumoPorViaje = 10
    method tieneCombustible() = combustible > consumoPorViaje
    method consumirCombustible(){
        combustible = combustible - consumoPorViaje
    }
    method rapido()= rapido
}

object avionDeCombate {
    const puedeVolar = true
    var combustible = 500
    var misiles = 1
    method tieneMisiles() = true
    const consumoPorDisparo = 1
    const consumoPorVuelo = 500
    method disparaMisil() = true
    method tieneMunicion() = misiles > consumoPorDisparo
    method consumirMunicion() {
        misiles = misiles - consumoPorDisparo
    }
    method tieneCombustible() = combustible > consumoPorVuelo
    method consumirCombustible(){
        combustible = combustible - consumoPorVuelo
    }
    method puedeVolar() = puedeVolar
}


object lancha {
    var combustible = 600
    const consumoPorNavegacion = 200
    method tieneCombustible() = combustible > consumoPorNavegacion
    method consumirCombustible() { 
        combustible = combustible - consumoPorNavegacion
    }
}
