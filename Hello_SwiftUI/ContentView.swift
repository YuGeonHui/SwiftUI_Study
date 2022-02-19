



//
//  ContentView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            
            Image("costa-rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                // .clipShape(Circle())
                .cornerRadius(50)
                .padding(.all)
            
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.green)
            
//            Spacer()
            
            Text("Scond Line")
                .font(.title)
                .foregroundColor(.orange)
            
            HStack {
                Text("Left Side")
                Text("Right Side")
                    .padding(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
