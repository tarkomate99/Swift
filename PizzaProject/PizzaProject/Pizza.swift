//
//  Pizza.swift
//  PizzaProject
//
//  Created by Student on 2022. 03. 22..
//  Copyright © 2022. vemwaat. All rights reserved.
//

import Foundation


class Pizza {
    var diameter = 0.0
    var type = "Cheese"
    
    var radius: Double {
        get {
            return diameter / 2.0
        }
        set(newRadius){
            diameter = newRadius * 2.0
        }
    }
    
    
    var area: Double {
        get {
            return pow(radius, 2.0) *
                Double.pi
        }
    }
    
    func diameterFromString(size: String) -> Double {
        
        switch size {
            
        case "20cm" : return 20.0
        case "28cm" : return 28.0
        case "32cm" : return 32.0
        case "50cm" : return 50.0
        default: return 0.0
            
        }
        
    }
}
