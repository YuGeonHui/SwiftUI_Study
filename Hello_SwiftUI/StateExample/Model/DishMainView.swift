//
//  DishMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/21.
//

import SwiftUI

struct DishMainView: View {
    
    var model = Dish.all()
    @State private var isSpicy: Bool = false
    
    var body: some View {
        
        List {
            
            Toggle(isOn: $isSpicy) {
                Text("Spicy").font(.title)
            }
            
            ForEach(model.filter { $0.isSpicy == self.isSpicy }) { dish in
                
                HStack {
                
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100)
                        
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    
                    Spacer()
                    
                    if dish.isSpicy {
                        Image("spicy_icon")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }
    }
}


struct DishMainView_Previews: PreviewProvider {
    
    static var previews: some View {
        DishMainView()
    }
}
