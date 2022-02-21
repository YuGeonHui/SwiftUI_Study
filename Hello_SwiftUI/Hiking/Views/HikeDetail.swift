//
//  HikeDetail.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/20.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
            
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angels Landing", imageURL: "Test1", miles: 10.0))
    }
}
