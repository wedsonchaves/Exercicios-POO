//
//  ViewController.swift
//  AppMercaod
//
//  Created by Wedson Chaves on 16/09/20.
//  Copyright © 2020 Wedson Chaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldProduct: UITextField!
    
    @IBOutlet weak var textFieldQuantity: UITextField!
    
    
    @IBOutlet weak var labelList: UILabel!
    
    var arrayProduct = [Product]()
    
    @IBAction func buttonSave(_ sender: Any) {
        registerNewProduct(name: textFieldProduct.text!, quantity: Int(textFieldQuantity.text!)!)
    }
    
    
    @IBAction func buttonClean(_ sender: Any) {
        
    }
    @IBAction func buttonDelete(_ sender: Any) {
        
    }
    
    private func getProduct(name: String) -> Product? {
        for product in arrayProduct {
            if product.name.lowercased() == name.lowercased(){
                return product
            }
        }
        return nil
    }
    
    private func registerNewProduct(name: String, quantity: Int){
        if !ifProductExist(name: name){
            arrayProduct.append(Product(name: name, quantity: quantity))
        } else {
            let product = getProduct(name: name)
            if product != nil{
                product!.quantity = quantity
            }
        }
        clearFields()
    }
    
    private func ifProductExist (name: String) -> Bool{
        for product in arrayProduct {
            if product.name.lowercased() == name.lowercased(){
                return true
            }
        }
        return false
    }
    
    private func getProductInfo (){
        let product = getProduct(name: textFieldProduct.text!)
        if product != nil {
            textFieldQuantity.text = String(product!.quantity)
        }
        
    }
    
    func clearFields(){
        textFieldProduct.text = ""
        textFieldQuantity.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldProduct.delegate = self
        textFieldQuantity.delegate = self
    }


}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let temp = isEmpty()
        print (temp)
        if !isEmpty(){
            textFieldQuantity.becomeFirstResponder()
        }
    
    }
    
    func isEmpty() -> Bool {
        print ("dddddd")
        if (textFieldProduct.text == nil || textFieldProduct.text!.isEmpty) {
            return true
        }
        return false
    }
}



