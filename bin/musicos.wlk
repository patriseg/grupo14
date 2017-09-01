object joaquin {
	var grupo = true
	var habilidad = 20

	method habilidad() {
		if (grupo) { return habilidad + 5 }
		else return habilidad
	}

	method interpretaBien(unaCancion) {
		return unaCancion.duracion() > 300
	}

	method costoPresentacion() {
		if (grupo) { return 50 }
		else return 100
	}

	method tocaSolo(trueOFalse) {
		grupo = ! trueOFalse
	}
	method verGrupo() {
		return grupo
	}
}

object lucia {
	var grupo = true
	var habilidad = 70
	method habilidad() {
		if (grupo) { return habilidad - 20 }
		else return habilidad
	}
	method interpretaBien(unaCancion) {
		return unaCancion.letra().contains("familia")
	}

	method costoPresentacion(unLugar) {
		if (unLugar.concurrido()) { return 500 }
		else return 400
	}
	method tocaSolo(trueOFalse) {
		grupo = ! trueOFalse
	}
	method verGrupo() {
		return grupo
	}
}

object luisAlberto {
	var guitarraFender = 10
	var guitarraGibson = 15
	var guitarraUsada = 0
	method usarGuitarra(nombreGuitarra) {
		if (nombreGuitarra == "Fender") { guitarraUsada = guitarraFender }
		else guitarraUsada = guitarraGibson
	}
	method romperGibson() {
		guitarraGibson = 5
	}

	method habilidad() {
		if (8 * guitarraUsada < 100) { return 8 * guitarraUsada }
		else return 100
	}
	method interpretaBien(unaCancion) {
		return true
	}
	method costoPresentacion(mes, anio) {
		if (mes <= 09 && anio <= 2017) {
			return 1000
		} else return 1200
	}
}