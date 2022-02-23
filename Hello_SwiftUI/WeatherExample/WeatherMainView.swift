//
//  WeatherMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/23.
//

import SwiftUI

struct WeatherMainView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
       
        VStack(alignment: .center) {
            
            TextField("Enter city name", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
            }
            .font(.custom("Arial", size: 30))
            .padding()
            .fixedSize()
            
            Text(self.weatherVM.temperature)
                .font(.custom("Arial", size: 80))
                .foregroundColor(.white)
                .offset(y: 100)
                .padding()

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct WeatherMainView_Preivew: PreviewProvider {
    
    static var previews: some View {
        WeatherMainView()
    }
}
