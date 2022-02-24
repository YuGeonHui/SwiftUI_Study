//
//  Coffee.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/24.
//

import Foundation

struct Coffee {
    
    let name: String
    let imageURL: String
    let price: Double
    
}

extension Coffee {
    
    static func all() -> [Coffee] {
        
        return [
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "Espresso", price: 2.1),
            Coffee(name: "Regular", imageURL: "Regular", price: 1.0)
        ]
    }
}
