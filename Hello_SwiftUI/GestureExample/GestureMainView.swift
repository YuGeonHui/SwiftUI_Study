//
//  GestureMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/05.
//

import SwiftUI

struct GestureMainView: View {
    
    @State private var tapped: Bool = false
    @State private var cardDargState = CGSize.zero
    @State private var cardRotateState: Double = 0
    
    var body: some View {
        Card(tapped: self.tapped)
            .offset(y: self.cardDargState.height)
            .rotationEffect(Angle(degrees: self.cardRotateState))
        
            .gesture(RotationGesture()
                .onChanged { value in
                    self.cardRotateState = value.degrees
                }
            )
            
            .gesture(DragGesture()
                .onChanged { value in
                    self.cardDargState = value.translation
                }
                .onEnded { value in
                self.cardDargState = CGSize.zero
                }
            )
        
        
            .gesture(TapGesture(count: 1)
                        .onEnded( { () in
                self.tapped.toggle()
            })
            )
    }
}

struct GestureMainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GestureMainView()
            GestureMainView()
        }
    }
}
