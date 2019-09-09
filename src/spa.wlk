import personas.*

object spa {
	var premioAPersona
	
	method atender(persona) {
		if(premioAPersona == persona) {
			self.atenderConPremioA_(persona)
		}
		else {
			self.atenderA_(persona)
		}
		premioAPersona = persona
		// hay que hacer que la persona reciba masajes y se dé un baño de vapor
		// despues, agregar el premio para el que vuelve enseguida
	}
	method atenderConPremioA_(persona) {
		persona.recibirMasajes()
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
	}
	method atenderA_(persona) {
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
	}
	method atenderATodoElMundo(persona1, persona2, persona3){
		self.atender(persona1)
		self.atender(persona2)
		self.atender(persona3)
	}
}