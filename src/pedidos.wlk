import dependencias.*
import rodados.*

class Pedido{
	var property distancia
	var property tiempo
	var property pasajeros
	var property coloresQueNo = #{}
	method agregarColores(color){
		coloresQueNo.add(color)
	}
	method quitarColores(color){
		coloresQueNo.remove(color)
	}	
	method velocidadRequerida(){
		return distancia / tiempo
	}
	method autoQueSatisface(rodado){
		return self.velocidadRequerida()*1.1 < rodado.velocidad() &&
			   rodado.capacidad() <= pasajeros &&
			   !coloresQueNo.any({c=>c == rodado.color()})
	}
	method acelerar(){
		tiempo = 0.max(tiempo -1)
	}
	method relajar(){
		tiempo += 1
	}
}