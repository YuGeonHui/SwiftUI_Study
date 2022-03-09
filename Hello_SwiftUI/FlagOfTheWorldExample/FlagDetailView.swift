//
//  FlagDetailView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/08.
//

import SwiftUI

struct FlagDetailView: View {
    
    @Binding var flagVM: FlagViewModel
    
    var body: some View {
        
        Text(self.flagVM.flag)
            .font(.custom("Arial", size: 200))
        
        TextField("Enter some text", text: self.$flagVM.country)
            .padding()
            .fixedSize()
        
        Button("Submit") {
            self.flagVM.showModal.toggle()
        }
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(flagVM: .constant(FlagViewModel()))
    }
}
