//
//  PessoaJuridica.swift
//  Exercicio_1
//
//  Created by Wedson Chaves on 18/09/20.
//  Copyright © 2020 Wedson Chaves. All rights reserved.
//

import Foundation

class PessoaJuridica: Pessoa {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
    self.cnpj = cnpj
    super.init(nome: nome)
}
}


extension PessoaJuridica: FormatadorProtocol{
    func getFormatado() -> String{
        return "\(nome) \(cnpj)"
    }
}
