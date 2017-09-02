class Musico {
	var habilidad
	var grupo 
	var albumes =[]
	constructor(unaHabilidad){
		habilidad=unaHabilidad
	}
	// hola marola
	method albumes() = albumes
	method agregaAlbumes(unosAlbumes){
		self.albumes().addAll(unosAlbumes)
	}
	method agregaAlbum(unAlbum){
		self.agregaAlbumes([unAlbum])
	}
	method tireTodos(){
		self.albumes().clear()
	}
	method albumes(nuevosAlbumes){
		self.tireTodos()
		self.agregaAlbumes(nuevosAlbumes)
	}
	method enGrupo(){
		grupo = true
	}
	method verGrupo(){
		return grupo
	}
	method habilidad(unMusico) {
		return unMusico.habilidad()
	} 
	
	method minimalista(){
		return self.albumes().all({unAlbum => unAlbum.todasCancionesCortas()})
		
	}
	
	
	method contienePalabra(palabra){
		return self.albumes().filter({unAlbum => unAlbum.albumContienePalabra(palabra)})
	}
	method cuantoDuraLaObra(){
		return self.albumes().sum({unAlbum => unAlbum.duracionTotal()})
	}
	
	
	method laPego(){
		return self.albumes().all({unAlbum => unAlbum.buenasVentas()})
		
	}
}


class CantaEnGrupo inherits Musico {
		
	override  method habilidad(plus){
		return habilidad + plus
	}
}


class Solista inherits Musico {
	var palabra
	constructor(unaPalabra,unaHabilidad)= super(unaHabilidad){
		
		palabra=unaPalabra
	}
	override method enGrupo (){
		grupo = false
	}
	method cantaBien(unaCancion,unaPalabra){
		return unaCancion.letra().contains(unaPalabra)
	}
	method habilidad(){
		return habilidad
	}
}

object kike{
	var grupo = true
	var albumes=[]
	method habilidad(){
		return 60
	} 
	method plus(){
		return 20
	}
	method cuantoDuraLaObra(){
		return self.albumes().sum({unAlbum => unAlbum.duracionTotal()})
	}
	method albumes()=albumes
	
}
object soledad{
	var grupo = false
	var albumes =[]
	method habilidad() = 55
	method palabra() = "amor"
	method agregaAlbumes(unosAlbumes){
		return albumes.addAll(unosAlbumes)
	}
	method albumes() = albumes
	method minimalista(){
		return self.albumes().all({unAlbum => unAlbum.todasCancionesCortas()})
		
	}
	method cuantoDuraLaObra(){
		return self.albumes().sum({unAlbum => unAlbum.duracionTotal()})
	}
	method laPego(){
		return self.albumes().all({unAlbum => unAlbum.buenasVentas()})
		
	}
	method cancionMasLarga(){
		return self.albumes().filter({unAlbum=>unAlbum.cancionLarguisima()})
	}
}




object joaquin{
	var grupo = true
	var albumes =[]
	
	method habilidad(){
		return 20
	} 
	method plus(){
		return 5
	} 
	method interpretaBien(unaCancion){
		return unaCancion.duracion() > 300
		}
	method costoPresentacion(){
		if(grupo){return 50}
		else return 100
		}
	method tocaSolo (trueOFalse){
		grupo = !trueOFalse 
		}
	method verGrupo(){
		return grupo
	}
	method agregaAlbumes(unosAlbumes){
		albumes.addAll(unosAlbumes)
	}
	
	method albumes() = albumes
	method minimalista(){
		return self.albumes().all({unAlbum => unAlbum.todasCancionesCortas()})
		
	}
	method laPego(){
		return self.albumes().all({unAlbum => unAlbum.buenasVentas()})
		
	}
	method cancionMasLarga(){
		return self.albumes().filter({unAlbum=>unAlbum.cancionLarguisima()})
	}
}


object lucia{
	var grupo = true
	var habilidad = 70
	method habilidad(){
	if (grupo) {return habilidad - 20}
	else return habilidad
	}
	method interpretaBien(unaCancion){
	return unaCancion.letra().contains("familia")
	}
	
	method costoPresentacion(unLugar){
	if(unLugar.concurrido()){return 500}
	else return 400
	}
	method tocaSolo (trueOFalse){
	grupo = !trueOFalse 
	}
	method verGrupo(){
	return grupo
	}
}


object luisAlberto {
	var guitarraFender = 10
	var guitarraGibson = 15
	var guitarraUsada = 0
	var albumes =[]
	method usarGuitarra(nombreGuitarra) {
		if (nombreGuitarra == "Fender") { guitarraUsada = guitarraFender}
		else  guitarraUsada = guitarraGibson
		}
	method romperGibson() {
	guitarraGibson = 5
	}
	
	method habilidad() {
		 if  (8 * guitarraUsada < 100) {return 8 * guitarraUsada  }
		else return 100
		}
	method interpretaBien(unaCancion){
		return true
	}
	method costoPresentacion(mes,anio){
			
			if (mes <= 09 && anio <= 2017){
				return 1000
			} else return 1200
			
	}
	
	method agregaAlbumes(unosAlbumes){
		return albumes.addAll(unosAlbumes)
	}
	method albumes() = albumes
	method minimalista(){
		return self.albumes().all({unAlbum => unAlbum.todasCancionesCortas()})
		
	}
	method cuantoDuraLaObra(){
		return self.albumes().sum({unAlbum => unAlbum.duracionTotal()})
	}
	method laPego(){
		return self.albumes().all({unAlbum => unAlbum.buenasVentas()})
		
	}
	method cancionMasLarga(){
		return self.albumes().filter({unAlbum=>unAlbum.cancionLarguisima()})
	}
	method contienePalabra(palabra) = self.albumes().filter({unAlbum => unAlbum.albumContienePalabra(palabra)})
}
class Album{
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
class Cancion {
	var titulo
	var letra
	var duracion
	constructor(unTitulo,unaLetra,unaDuracion){
	titulo = unTitulo
	letra = unaLetra
	duracion = unaDuracion
	}

	method duracion(){
		return duracion
	}
	method titulo() = titulo
	method letra() = letra
	method cancionContienePalabra(palabra){
		return self.letra().contains(palabra)
	}
	method esCorta(){
		return self.duracion() < 180
	}
}