//-----Luisa Jugadora-----//
object luisa {
  
}
//-----Floki Guerrero-----//
/*

*/
object floki {
  
  
}
//-----Mario Trabajador-----//
/*

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

  method ptencia() = 30
  method registrarUso() {estaCargada = false}
  method estaCargada() = estaCargada
}
//-----Castillo Elemento-----//
/*

*/
object castillo {
  
}
//-----Vaca Aurora Elemento-----//
/*

*/
object aurora {
  
}
//-----Arbol Tipa Elemento-----//
/*

*/
object tipa {
  
}