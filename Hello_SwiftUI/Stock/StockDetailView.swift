//
//  StockDetailView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/11/06.
//

import SwiftUI

struct StockDetailView: View {
    
    var stock: StockModel
    
    var body: some View {
        
        VStack(spacing: 40) {
        
            Image(stock.imageName)
            Text(stock.name)
            Text("\(stock.price) 원")
            
        }
    }
}

struct StockDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailView(stock: StockModel.list[0])
    }
}
