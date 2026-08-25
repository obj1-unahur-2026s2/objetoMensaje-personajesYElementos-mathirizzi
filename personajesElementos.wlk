//-----Luisa Jugadora-----//
/*
Personaje manejado = personaje activo -> floki o mario
Metodo aparece(unElemento) -> personaje activo -> encontrar elemento
Personaje activo arranca en mario -> variable
*/
object luisa {
    var personajeActivo = mario
    method personajeActivo() = personajeActivo
    method cambiarJugador(nuevoPersonaje) {
      personajeActivo = nuevoPersonaje
    }

    method aparece(unElemento) {
      personajeActivo.encontrar(unElemento)
    }
    

  
}
//-----Floki Guerrero-----//
/*
Tiene una de las dos armas
Implementa el metodo encontrar(elemento) -> el elemento recibe ataque = a valor de potencia del arma & el arma registra el uso.
El arma debe estar cargada
Ataque a castillo -> valor de defensa - potencia del ataque
Ataque a aurora -> Si potencia del ataque >= 10 -> Esta viva = false sino {nada}
Ataque a tipa -> {nada}
*/
object floki {
    var armaActual = ballesta
    method armaActual() = armaActual
    method cambiarDeArma(nuevaArma) {
      armaActual = nuevaArma
    }
  
  method encontrar(unElemento) {
    if (armaActual.estaCargada()){

    unElemento.recibirAtaque(armaActual.potencia())
    armaActual.registrarUso()

    } else {
        throw new Exception(message = "El arma no está cargada")
    }
  }
}
//-----Mario Trabajador-----//
/*
Implementa el metodo encontrar(elemento)
Valor recolectado (variable) arranca en 15 (arranca con 1 encuentro con aurora)
Encuentra a castillo -> recolecta valor = defensa del castillo / 5 -> defensa del castillo + 20 (tope 200)
Encuentra a aurora -> recolecta valor = 15 -> a aurora {nada}
Encuentra a tipa -> recolecta valor = altura de tipa * 2 -> altura de tipa + 1
Metodo esFeliz arranca en false -> si valor recolectado >= 50 o ultimo elemento encontrado = tipa -> esFeliz = true
Variable ultimo elemento encontrado

*/
object mario {
  
}
//-----Ballesta Arma-----//
/*
Arma 1
Potencia 4
"Nace" con 10 flechas, cada vez que se usa pierde 1
Esta cargada cuando tiene flechas
*/
object ballesta {
  var cantidadDeFlechas = 10

  method potencia () = 4
  method registrarUso() {cantidadDeFlechas -= 1}
  method estaCargada() = cantidadDeFlechas > 0
}
//-----Jabalina Arma-----//
/*
Arma 2
Potencia 30
"Nace" cargada
Se puede usar solo una vez, al usarla deja de estar cargada
*/
object jabalina {
  var estaCargada = true

  method potencia() = 30
  method registrarUso() {estaCargada = false}
  method estaCargada() = estaCargada
}
//-----Castillo Elemento-----//
/*
Tiene 20 metros de altura (constante)
Tiene valor de defensa (variable numerica arranca en 150)
Recibe ataque de floki -> valor de defensa - potencia del ataque
*/
object castillo {
    method altura() = 20
    var nivelDeDefensa = 150
    method nivelDeDefensa() = nivelDeDefensa

    method recibirAtaque(potencia) {
      
    }
  
}
//-----Vaca Aurora Elemento-----//
/*
Tiene 1 metro de altura (constante)
Esta viva o no (booleano nace viva = arranca en true)
Recibe ataque de floki -> Si potencia del ataque >= 10 -> Esta viva = false sino {nada}
*/
object aurora {
    method altura() = 1
    method estaViva() = true

    method recibirAtaque(potencia) {
      
    }
}
//-----Arbol Tipa Elemento-----//
/*
Arranca en 8 metros (variable)
Recibe ataque de floki -> {nada}
*/
object tipa {
    var altura = 8
    method altura() = altura
        
    method recibirAtaque(potencia) {
      
    }
}