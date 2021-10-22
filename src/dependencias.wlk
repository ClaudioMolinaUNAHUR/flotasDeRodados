import rodados.*
import pedidos.*
class Dependencia {
	 var property rodados = []
	 var property empleados
	 var property pedidos =[]
	 method agregarPedido(pedido){
	 	pedidos.add(pedido)
	 }
	 method quitarPedido(pedido){
	 	pedidos.remove(pedido)
	 }
	 method agregarAFlota(rodado){
	 	rodados.add(rodado)
	 }
	 method quitarAFlota(rodado){
	 	rodados.remove(rodado)
	 }
	 method pesoTotalFlota(){
	 	return rodados.sum{c => c.peso()}
	 }
	 method todosVanAlMenosA(num){
	 	return rodados.all{c=>c.velocidad() >= num}
	 }
	 method estaBienEquipada(){
	 	return rodados.size() > 3 && self.todosVanAlMenosA(100)
	 }
	 method todosLosDeColor(color){
	 	return rodados.filter{c=>c.color() == color}
	 }
	 method capacidadTotalEnColor(color){
	 	return self.todosLosDeColor(color).sum{c=>c.capacidad()}
	 }
	 method colorDelRodadoMasRapido(){
	 	return rodados.max({c=>c.velocidad()}).color()
	 }
	 method capacidadTotal(){
	 	return rodados.sum{c=>c.capacidad()}
	 }
	 method capacidadFaltante(){
	 	return 0.max(self.empleados() - self.capacidadTotal() )
	 }
	 method esGrande(){
	 	return rodados.size() >= 5 && empleados > 40
	 }
	 method totalDePasajerosEnPedidos(){
	 	return pedidos.sum{c=> c.pasajeros()}
	 }
	 method algunAutoPuedeEntregar(pedido){
	 	return rodados.any{auto => pedido.autoQueSatisface(auto)}
	 }
	 method pedidosQueNoSatisfancen(){
	 	return pedidos.filter{c=>not self.algunAutoPuedeEntregar(c)}
	 }
	 method pedidosConColorIncompatible(color){
	 	return pedidos.all{c=>c.coloresQueNo().contains(color)}
	 }
	 method relajarPedidos(){
	 	return pedidos.forEach{c=>c.relajar()}
	 }
	 
}