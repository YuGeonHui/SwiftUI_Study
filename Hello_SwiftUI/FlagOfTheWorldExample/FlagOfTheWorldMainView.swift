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
    @State private var country: String = ""
    
    let flags = ["🤣", "😨", "😠", "🪛", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈"]
    
    var body: some View {
        
        List {
            
            Text(self.country)
            
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
            FlagDetailView(flag: self.selectedFlag, country: self.$country, showModal: self.$showModal)
        }
    }
}

struct FlagOfTheWorldMainView_Previews: PreviewProvider {
    static var previews: some View {
        FlagOfTheWorldMainView()
    }
}
