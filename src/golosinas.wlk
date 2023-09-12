import sabores.*


object bombon {
	var pesoEnGramos = 12
	
	method pesoEnGramos() = pesoEnGramos
	method sabor() = frutilla
	method precio() = 5
	method tieneGluten() = false
	
	method recibirMordisco(){
		pesoEnGramos = 0.max(pesoEnGramos*0.8 - 1)
	}
}

object alfajor {
	var pesoEnGramos = 300
	
	method pesoEnGramos() = pesoEnGramos
	method sabor() = chocolate
	method precio() = 12
	method tieneGluten() = true
	
	method recibirMordisco(){
		pesoEnGramos = 0.max(pesoEnGramos*0.8)
		}
}


object caramelo {
	var pesoEnGramos = 5
	
	method pesoEnGramos() = pesoEnGramos
	method sabor() = frutilla
	method precio() = 5
	method tieneGluten() = false
	
	method recibirMordisco(){
		pesoEnGramos = 0.max(pesoEnGramos - 1)
	}
}

object chupetin {
	var pesoEnGramos = 7
	
	method pesoEnGramos() = pesoEnGramos
	method sabor() = naranja
	method precio() = 2
	method tieneGluten() = false
	
	method recibirMordisco(){
		pesoEnGramos = 2.max(pesoEnGramos*0.9)
	}
}

object oblea{
	var pesoEnGramos = 250
	
	method pesoEnGramos() = pesoEnGramos
	method sabor() = vainilla
	method precio() = 5
	method tieneGluten() = true
	
	method recibirMordisco(){
		if (pesoEnGramos > 70) {
			pesoEnGramos = pesoEnGramos*0.5
		}
		else{
			pesoEnGramos = 0.max(pesoEnGramos*0.75)
		}
	}
}

object chocolatin{
	var pesoEnGramos 
	var precio = pesoEnGramos * 0.5
	
	method pesoEnGramos() = pesoEnGramos
	method sabor() = chocolate
	method precio() = precio
	method tieneGluten() = true
	
	method pesoEnGramos(unValor){
		pesoEnGramos = unValor
	}
	method recibirMordisco(){
		pesoEnGramos = 0.max(pesoEnGramos - 2)
	}
}

object golosinaBaniada{
	var property golosinaBase 
	var pesoEnGramosDeBaniado = 4
	
	method sabor() = self.golosinaBase().sabor()
	method pesoEnGramos() = self.golosinaBase().pesoEnGramos() + pesoEnGramosDeBaniado
	method precio() = self.golosinaBase().precio() + 2
	method tieneGluten() = self.golosinaBase().tieneGluten()
		
	method recibirMordisco(){
		self.golosinaBase().recibirMordisco()
		pesoEnGramosDeBaniado = 0.max(pesoEnGramosDeBaniado - 2)
	}
}

object pastillaTuttiFrutti{
	var pesoEnGramos = 5
	var property tieneGluten 
	var property sabor = frutilla
	
	method precio(){
		if (tieneGluten){
			return 10
		}
		else{
			return 7
		}
	}
	method recibirMordisco(){
		if (self.sabor().equals(frutilla)){
			self.sabor(chocolate)
		}
		else if (self.sabor().equals(chocolate)){
			self.sabor(naranja)
		}
		else{
			self.sabor(frutilla)
		}		
	}
	 
}

