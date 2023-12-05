//
//  LBObserve.swift
//  LBObservableProperty
//
//  Created by ליעוז בלקי on 05/12/2023.
//

import UIKit
import Foundation
import LBObservablePropertyXCFramework

public class LBObserve<Value>: _LBObservableProperty<Value>._LBObserve {
    
    public override func send(_ newValue: Value) {
        super.send(newValue)
    }
    
    public override func removeObserver(_ target: NSObject) {
        super.removeObserver(target)
    }
    
    public override func onChange(_ target: NSObject, _ block: @escaping (Value) -> Void) {
        super.onChange(target, block)
    }
}
