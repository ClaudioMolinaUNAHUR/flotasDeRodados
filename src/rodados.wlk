import wollok.game.*
class Corsa {
	var color
	var posicion
	var ultimoMovimiento
	method moverse(direccion){
		posicion = direccion.mover()
		ultimoMovimiento = direccion
	}
	method capacidad(){
		return 4
	}
	method velocidad(){
		return 150
	}
	method peso(){
		return 1300
	}
	method color(){
		return color
	}
	method repetirUltimoMovimiento(){
		posicion = ultimoMovimiento.mover()
	}
}

class Kwid {
	var tanque
	method capacidad(){
		return if(tanque) {3} else {4}
	}
	method velocidad(){
		return if(tanque) {110} else {120}
	}
	method peso(){
		return if(tanque) {1350} else {1200}
	}
	method color(){
		return "Azul"
	}
}

class AutoEspecial{
	var property capacidad
	var property velocidad
	var property peso
	var property color
}

object traffic {
	var property interior
	var property motor
	method capacidad(){
		return interior.capacidad()
	}
	method velocidad(){
		return motor.velocidad()
	}
	method peso(){
		return 4000 + interior.peso() + motor.peso()
	}
	method color(){
		return "Blanco"
	}
}

object interiorComodo{
	method capacidad(){
		return 5
	}
	method peso(){
		return 700
	}
}

object interiorPopular{
	method capacidad(){
		return 12
	}
	method peso(){
		return 1000
	}
}

object motorPulenta{
	method velocidad(){
		return 130
	}
	method peso(){
		return 800
	}
}

object motorBataton{
	method velocidad(){
		return 80
	}
	method peso(){
		return 500
	}
}

object norte{
	method mover(){
		return game.up(1)
	}	
}
object este{
	method mover(){
		return game.left(1)
	}	
}
object sur{
	method mover(){
		return game.down(1)
	}	
}
object oeste{
	method mover(){
		return game.right(1)
	}	
}