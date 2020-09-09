import UIKit
class Veiculo{
    var cor: String
    var preco: Float
    var qtePassageiros: Int
    var distancia: Float
    init(cor: String, preco: Float, qtePassageiros: Int, distancia: Float) {
        self.cor = cor
        self.preco = preco
        self.qtePassageiros = qtePassageiros
        self.distancia = distancia
    }
    func calculaCombustivel() -> Float{
        return preco
    }
}
class Carro:Veiculo{
    var tamanhoDasRodas: Int
    init(cor: String, preco: Float, qtePassageiros: Int, distancia: Float, tamanhoDasRodas: Int) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: cor, preco: preco, qtePassageiros: qtePassageiros, distancia: distancia)
    }
    override func calculaCombustivel() -> Float {
        return Float(tamanhoDasRodas) * Float(qtePassageiros) * distancia
    }
}
class Aviao: Veiculo{
    var piloto: String
    var ciaAerea: String
    init(cor: String, preco: Float, qtePassageiros: Int, distancia: Float, piloto: String, ciaAerea: String) {
        self.piloto = piloto
        self.ciaAerea = ciaAerea
        super.init(cor: cor, preco: preco, qtePassageiros: qtePassageiros, distancia: distancia)
    }
    override func calculaCombustivel() -> Float {
        return Float(qtePassageiros) * distancia
    }
}
let jumbo55 = Aviao(cor: "Vermelho", preco: 2000000.00, qtePassageiros: 200, distancia: 900000, piloto: "Narlei", ciaAerea: "Gol")
let uno = Carro(cor: "prata", preco: 25000.00, qtePassageiros: 5, distancia: 20.8, tamanhoDasRodas: 2)
jumbo55.calculaCombustivel()
uno.calculaCombustivel()
