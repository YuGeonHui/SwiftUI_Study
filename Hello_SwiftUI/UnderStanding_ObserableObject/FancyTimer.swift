//
//  FancyTimer.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/22.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    
    @Published var value: Int = 0

    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
