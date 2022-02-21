//
//  Dish.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/21.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
    
}

extension Dish {
    
    static func all() -> [Dish] {
        
        return [
        
            Dish(name: "Name 1", imageURL: "DishImage1", isSpicy: true),
            Dish(name: "Name 2", imageURL: "DishImage2", isSpicy: false),
            Dish(name: "Name 3", imageURL: "DishImage3", isSpicy: true)
        ]
    }
}
