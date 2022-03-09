//
//  FlagOfTheWorldMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/08.
//

import SwiftUI

struct FlagOfTheWorldMainView: View {
    
    let flags = ["🤣", "😨", "😠", "🪛", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈", "🏳️‍🌈"]
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
            //$가 붙으면 값을 수정가능한 Binding 타입 참조합니다.
            FlagDetailView(flagVM: self.$flagVM)
        }
    }
}

struct FlagOfTheWorldMainView_Previews: PreviewProvider {
    static var previews: some View {
        FlagOfTheWorldMainView()
    }
}
