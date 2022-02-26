//
//  CoffeeOrderingAppMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/24.
//

import SwiftUI

struct CoffeeOrderingAppMainView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        
        NavigationView {
                
            OrderListView(orders: self.orderListVM.orders)
                .navigationTitle("Coffee Orders")
        }
    }
}

struct CoffeeOrderingAppMainView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeOrderingAppMainView()
    }
}
