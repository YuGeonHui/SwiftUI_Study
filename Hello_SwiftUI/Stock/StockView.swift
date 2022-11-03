//
//  StockView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/11/02.
//

import SwiftUI

struct StockView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
        
        VStack {
            
            ForEach(list) { stock in
                StockRankRow(stock: stock)
                    .frame(height: 80)
            }
        }
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView()
    }
}
