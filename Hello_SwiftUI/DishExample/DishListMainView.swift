//
//  DishListMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/03/02.
//

import SwiftUI

struct DishListMainView: View {
    
    let dishes = DishModel.all()
    
    var body: some View {
        
        List {
            ForEach(dishes, id: \.self) { dish in
                DishCell(dish: dish)
            }
        }
    }
}


struct DishListMainView_Previews: PreviewProvider {
    static var previews: some View {
        DishListMainView()
    }
}
