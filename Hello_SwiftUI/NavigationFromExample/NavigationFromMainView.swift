//
//  NavigationFromMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/06.
//

import SwiftUI

struct NavigationFromMainView: View {
    
    @State private var images = ["😍", "😍", "😍", "😍", "😍", "😍", "😍", "😍", "😍", "😍"]
    
    var body: some View {
       
        NavigationView {
            
            Form {
                
                Section(header: Text("")) {
                    
                    HStack {
                        
                        Text("Show Previews")
                        Spacer()
                        
                        NavigationLink(destination: Text("")) {
                            Text("Always").foregroundColor(.gray)
                        }.fixedSize()
                    }
                }
                
                Section(header: Text("Notifciation previews will bve shown whetehr the ipone locked or unlocked").padding().lineLimit(nil)) {
                    
                    NavigationLink(destination: Text("")) {
                        Text("Siri Suggestions")
                    }
                }
                
                Section(header: VStack(alignment: .leading) {
                    Text("Choose while apps can suggest shortcuts on the lock screen").lineLimit(nil).padding(2)
                    Text("NOTIFICATION STYLE").padding(2)
                    
                }) {
                    ForEach(self.images, id: \.self) { img in
                        
                        HStack {
                            Text(img).font(.largeTitle)
                            Text("Notification")
                        }
                    }
                }
                .navigationTitle("Notifications")
            }
        }
    }
}

struct NavigationFromMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationFromMainView()
    }
}
