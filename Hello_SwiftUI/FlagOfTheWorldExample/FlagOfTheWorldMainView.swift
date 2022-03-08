//
//  FlagOfTheWorldMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/08.
//

import SwiftUI

struct FlagOfTheWorldMainView: View {
    
    @State private var showModal: Bool = false
    @State private var selectedFlag: String = ""
    
    let flags = ["🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈"]
    
    var body: some View {
        
        List {
            ForEach(0..<self.flags.count) { index in
                
                HStack {
                    Text(self.flags[index])
                        .font(.custom("Arial", size: 100))
                    Text("Flag \(index)")
                }.onTapGesture {
                    self.showModal.toggle()
                    self.selectedFlag = self.flags[index]
                }
            }
            
        }.sheet(isPresented: self.$showModal) {
            Text(self.selectedFlag)
                .font(.custom("Arial", size: 200))
        }
    }
}

struct FlagOfTheWorldMainView_Previews: PreviewProvider {
    static var previews: some View {
        FlagOfTheWorldMainView()
    }
}
