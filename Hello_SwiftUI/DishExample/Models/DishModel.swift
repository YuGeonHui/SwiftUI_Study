//
//  DishModel.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/02.
//

import Foundation

struct DishModel: Hashable {
    
    let name: String
    let price: Double
    let imageURL: String
}

extension DishModel {
    
    static func all() -> [DishModel] {
        
        return [
        
            DishModel(name: "Name0", price: 35, imageURL: "DishImage1"),
            DishModel(name: "Name1", price: 12, imageURL: "DishImage2"),
            DishModel(name: "Name2", price: 12, imageURL: "DishImage3"),
            DishModel(name: "Name3", price: 15, imageURL: "DishImage1"),
            DishModel(name: "Name4", price: 8, imageURL: "DishImage2"),
            DishModel(name: "Name5", price: 10, imageURL: "DishImage3"),
            DishModel(name: "Name6", price: 12, imageURL: "DishImage1"),
            
        ]
    }
}
