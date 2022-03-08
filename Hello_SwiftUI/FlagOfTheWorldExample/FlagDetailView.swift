//
//  FlagDetailView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/08.
//

import SwiftUI

struct FlagDetailView: View {
    
    var flag: String = ""
    
    @Binding var country: String
    @Binding var showModal: Bool
    
    var body: some View {
        
        Text(self.flag)
            .font(.custom("Arial", size: 200))
        
        TextField("Enter some text", text: $country)
            .padding()
            .fixedSize()
        
        Button("Submit") {
            self.showModal.toggle()
        }
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(country: .constant("USA"), showModal: .constant(false))
    }
}
