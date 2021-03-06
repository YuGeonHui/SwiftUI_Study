//
//  FlagOfTheWorldMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/08.
//

import SwiftUI

struct FlagOfTheWorldMainView: View {
    
    let flags = ["π€£", "π¨", "π ", "πͺ", "π³οΈβπ", "π³οΈβπ", "π³οΈβπ", "π³οΈβπ"]
    @State private var flagVM: FlagViewModel = FlagViewModel()
    
    var body: some View {
        
        List {
            
            Text(self.flagVM.country)
            
            ForEach(self.flags, id: \.self) { flag in
                
                HStack {
                    Text(flag)
                        .font(.custom("Arial", size: 100))
                    Spacer()
                
                }.onTapGesture {
                    self.flagVM.flag = flag
                    self.flagVM.showModal.toggle()
                }
                
            }
            
        }.sheet(isPresented: self.$flagVM.showModal) {
            //$κ° λΆμΌλ©΄ κ°μ μμ κ°λ₯ν Binding νμ μ°Έμ‘°ν©λλ€.
            FlagDetailView(flagVM: self.$flagVM)
        }
    }
}

struct FlagOfTheWorldMainView_Previews: PreviewProvider {
    static var previews: some View {
        FlagOfTheWorldMainView()
    }
}
