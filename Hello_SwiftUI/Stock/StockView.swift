//
//  StockView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/11/02.
//

import SwiftUI

struct StockView: View {
    
//    @State var list = StockModel.list
    
    @StateObject var vm = StockRankViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List($vm.models) { stock in
                
                ZStack {
                    
                    NavigationLink {
                        
                        StockDetailView(viewModel: vm, stock: stock)
                        
                    } label: {
                        
                        EmptyView()
                    }
                    
                    StockRankRow(stock: stock)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView()
            .preferredColorScheme(.dark)
    }
}
