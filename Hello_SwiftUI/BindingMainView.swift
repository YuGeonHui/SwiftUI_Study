//
//  BindingMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/21.
//

import SwiftUI

struct BindingMainView: View {
    
    @State var name: String = ""
    private func printName() {
        print(self.name)
    }
    
    var body: some View {
        
        VStack {
            Text(name)
            TextField("Enter your name", text: $name)
                .padding(12)
            
            Button(action: printName) {
                Text("Show Name Value")
            }
        }
    }
}

struct BindingMainView_Previews: PreviewProvider {
    
    static var previews: some View {
        BindingMainView()
    }
}
