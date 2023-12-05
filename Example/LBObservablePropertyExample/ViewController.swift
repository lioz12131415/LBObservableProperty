//
//  ViewController.swift
//  LBObservablePropertyExample
//
//  Created by ליעוז בלקי on 05/12/2023.
//

import UIKit
import LBObservableProperty

class Product {
    
    @LBObservableProperty var price: Double = .zero
    
}

class ViewController: UIViewController {
    
    fileprivate var product: Product = Product()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        product.$price.onChange(self) { newValue in
            print("price = \(newValue)")
        }
    }
    
    @IBAction func plusTouch(_ sender: UIButton) {
        product.price += 1
    }
    
    @IBAction func minusTouch(_ sender: UIButton) {
        product.price -= 1
    }
}

