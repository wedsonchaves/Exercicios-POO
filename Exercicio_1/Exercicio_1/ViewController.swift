//
//  ViewController.swift
//  Exercicio_1
//
//  Created by Wedson Chaves on 18/09/20.
//  Copyright © 2020 Wedson Chaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayItens = [FormatadorProtocol]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arrayItens.append(PessoaFisica(nome: "Narlei", cpf: "000000000"))
        arrayItens.append(PessoaJuridica (nome: "Digital House", cnpj: "111111111"))
        
        let textoPesquisa = "Digital House"
        
        var arrayFiltrado = [FormatadorProtocol]()
        
        for item in arrayItens {
            if item.getFotmatado().lowercased().contains(textoPesquisa){
                arrayFiltrado.append(item)
            }
        
        }
        
        print (arrayFiltrado)
    }


}

