//
//  LBObservableProperty.swift
//  LBObservableProperty
//
//  Created by ליעוז בלקי on 05/12/2023.
//

import UIKit
import Foundation
import LBObservablePropertyXCFramework

@propertyWrapper public class LBObservableProperty<Value>: _LBObservableProperty<Value> {
        
    public override var wrappedValue: Value {
        get { return super.wrappedValue     }
        set { super.wrappedValue = newValue }
    }
    
    public override var projectedValue: LBObserve<Value> {
        return observe as! LBObserve<Value>
    }
    
    public override init(wrappedValue: Value) {
        super.init(wrappedValue: wrappedValue)
        self.observe      = LBObserve<Value>()
        self.wrappedValue = wrappedValue
    }
}
