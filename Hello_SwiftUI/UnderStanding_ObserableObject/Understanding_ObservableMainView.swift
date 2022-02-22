//
//  Understanding_ObservableMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/22.
//

import SwiftUI

struct Understanding_ObservableMainView: View {
    
    @ObservedObject var fancyTimer = FancyTimer()
    
    var body: some View {
        Text("\(self.fancyTimer.value)").font(.largeTitle)
    }
}

struct Understanding_ObservableMainView_Preview: PreviewProvider {
   
    static var previews: some View {
        Understanding_ObservableMainView()
    }
}
