//
//  PessoaFisica.swift
//  Exercicio_1
//
//  Created by Wedson Chaves on 18/09/20.
//  Copyright © 2020 Wedson Chaves. All rights reserved.
//

import Foundation

class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}

extension PessoaFisica: FormatadorProtocol{
    func getFormatado() -> String{
        return "\(nome) \(cpf)"
    }
}
