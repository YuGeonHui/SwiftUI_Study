//
//  NightShiftFormMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/06.
//

import SwiftUI

struct NightShiftFormMainView: View {
    
    @State private var schedueld: Bool = false
    @State private var manuaalyEnableTillTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    
    var body: some View {
        
        NavigationView {
            
            Form {
                    
                Section(header: Text("Night Shfit automatically Shift color this Area, This Area is Section Header").padding(5).lineLimit(nil)) {
                    
                    Toggle(isOn: $schedueld) {
                        Text("Schedueld")
                    }
                    
                    HStack {
                        
                        VStack {
                            Text("Form")
                            Text("To")
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: Text("Scheduled Setting")) {
                            VStack {
                                Text("Sunset").foregroundColor(.blue)
                                Text("Sunrise").foregroundColor(.blue)
                            }
                        }.fixedSize()
                    }
                }
                
                Section(header: Text("").padding()) {
                    Toggle(isOn: $manuaalyEnableTillTomorrow) {
                        Text("Manuaaly Enable it till tomorrow")
                    }
                }
                
                Section(header: Text("Color Temperature").padding()) {
                    
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More Warm")
                    }
                }
            }
        }
    }
}

struct NightShiftFormMainView_Previews: PreviewProvider {
    static var previews: some View {
        NightShiftFormMainView()
    }
}
