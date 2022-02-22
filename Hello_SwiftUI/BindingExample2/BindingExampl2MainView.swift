//
//  BindingExampl2MainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/22.
//

import SwiftUI

struct BindingExampl2MainView: View {
    
    let episode = Episode(name: "Macbreak Weekly", track: "WWDC 2019")
    
    @State private var isPlaying = false
    
    var body: some View {
        
        VStack {
            
            Text(self.episode.name).font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
            Text(self.episode.track).foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }.padding(12)
    }
}

struct BindingExampl2MainView_Preview: PreviewProvider {
    static var previews: some View {
        BindingExampl2MainView()
    }
}
