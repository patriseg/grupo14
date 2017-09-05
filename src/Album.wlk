
class Album {

	var titulo
	var fecha = new Date ()
	var canciones = []
	
	var cantidadAVender
	var cantidadVendida
	constructor(){}
	constructor(unTitulo,_day,_month,_year,unaCantidadAVender,unaCantidadVendida){
		titulo=unTitulo
		fecha = fecha.initialize(_day, _month, _year)
		cantidadAVender=unaCantidadAVender
		cantidadVendida=unaCantidadVendida
	}
	method todasCancionesCortas(){
		 return canciones.all({unaCancion => unaCancion.esCorta()})
	}
	method cancionLarguisima(){
		return canciones.max({unaCancion => unaCancion.letra().size()})
	}
	method duracionTotal(){
		return canciones.sum({unaCancion=>unaCancion.duracion()})
	}
		
	method canciones() = canciones
	method titulo()=titulo
	method fecha()=fecha
	method cantidadAVender()=cantidadAVender
	method cantidadVendida()=cantidadVendida
	method agregaCanciones(unasCanciones){
		self.canciones().addAll(unasCanciones)
	}
	method agregaCancion(unaCancion){
		self.agregaCanciones([unaCancion])
	}
	method borreTodas(){
		self.canciones().clear()
	}
	method albumes(nuevosCanciones){
		self.borreTodas()
		self.agregaCanciones(nuevosCanciones)
	}
		
	method buenasVentas(){
		return self.cantidadAVender()*75/100 < self.cantidadVendida()
	}
	method albumContienePalabra(palabra){
		return self.canciones().filter({unaCancion=>unaCancion.cancionContienePalabra(palabra)})
	}
}


