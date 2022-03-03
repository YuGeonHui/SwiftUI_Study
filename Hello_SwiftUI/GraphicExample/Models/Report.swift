//
//  Report.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/03.
//

import Foundation

struct Report: Hashable {
    
    let year: String
    let revenue: Double
}

extension Report {
    
    static func all() -> [Report] {
        
        return [
            Report(year: "2001", revenue: 2500),
            Report(year: "2002", revenue: 4500),
            Report(year: "2003", revenue: 6500)
        ]
    }
}
