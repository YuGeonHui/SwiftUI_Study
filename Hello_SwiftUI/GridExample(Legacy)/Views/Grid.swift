//
//  Grid.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/20.
//

import SwiftUI

struct Grid: View {
    
    let animals = ["😍", "😍", "😍", "😍", "😍", "😍", "😍", "😍", "😍"]
    @State private var sliderValue: CGFloat = 1
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Slider(value: $sliderValue, in: 1...8, step: 1)
                Text(String(format: "%.0f", self.sliderValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                
                
                List(self.animals.chunks(size: Int(self.sliderValue)), id: \.self) { chunk in
                    ForEach(chunk, id: \.self) { animal in
                        Text(animal)
                    }
                }
            }
            
            .navigationTitle("Animals")
        }
    }
}

struct Grid_Previews: PreviewProvider {
    
    static var previews: some View {
        Grid()
    }
}
