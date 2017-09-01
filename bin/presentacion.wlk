
object lunaPark {
	const capacidad = 9290

	method concurrido() {
		return capacidad > 5000
	}
}

object laTrastienda {
	var sabado = [ 05, 12, 19, 26 ]

	const capacidadPb = 400

	const capacidadPrimerPiso = 300

	method capacidad(dia, mes, anio) {
		if (sabado.contains(dia)) { return capacidadPb + capacidadPrimerPiso }
		else return capacidadPb
	}

	method concurrido() {
		return ( capacidadPb + capacidadPrimerPiso ) > 5000
	}
}