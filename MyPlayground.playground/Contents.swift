import UIKit

import UIKit

protocol Voador {
    func voar()
}

class Pato: Voador {
    var acao: String = "e amo nadar!"
    func voar() {
        print("Estou voando como Pato \(acao)")
    }
}

class Aviao: Voador {
    var acaoAviao: String = "e carrego várias pessoas!"
    func voar() {
        print("Estou voando como um Avião \(acaoAviao)")
    }
}

class SuperHomem: Voador {
    var acaoSP: String = "e eu sou muito forte!"
    func voar() {
        print("Estou voando como um campeão \(acaoSP)")
    }
}

class TorreDeControle {
    private var arrayVoadores = [Voador]()
    
    func voamTodos() {
        for item in arrayVoadores {
            print(voador: item)
        }
    }
    
    private func print(voador: Voador) {
        voador.voar()
    }

    func adicionarVoador(voador: Voador) {
        arrayVoadores.append(voador)
    }
}


let donald = Pato()
let torreDaLiga = TorreDeControle()

torreDaLiga.adicionarVoador(voador: donald)

torreDaLiga.adicionarVoador(voador: Aviao())

torreDaLiga.adicionarVoador(voador: SuperHomem())

torreDaLiga.voamTodos()
