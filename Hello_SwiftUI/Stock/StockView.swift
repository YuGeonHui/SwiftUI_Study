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
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .listRowSeparator(.hidden)
                    .frame(height: 80)
            }
        }
        .listStyle(.plain)
        .background(.blue)
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView()
    }
}
