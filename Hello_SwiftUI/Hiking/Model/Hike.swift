//
//  Hike.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/19.
//

import Foundation


struct Hike {
 
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Frist Mountain", imageURL: "Test1", miles: 6),
            Hike(name: "Seocnd Mountain", imageURL: "Test2", miles: 5.8),
            Hike(name: "Third Mountain", imageURL: "Test3", miles: 7.2)
        ]
    }
}
