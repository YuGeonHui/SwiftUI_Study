//
//  ObservableObjectMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/22.
//

import SwiftUI

struct ObservableObjectMainView: View {
    
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)").font(.largeTitle)
            Button("Increment Score") {
                self.userSettings.score += 1 
            }
        }
    }
}

struct ObservableObjectMainView_Preview: PreviewProvider {
    
    static var previews: some View {
        ObservableObjectMainView()
    }
}
