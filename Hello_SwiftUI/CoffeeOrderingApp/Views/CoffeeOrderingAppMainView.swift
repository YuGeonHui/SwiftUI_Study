//
//  CoffeeOrderingAppMainView.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/24.
//

import SwiftUI

struct CoffeeOrderingAppMainView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    @State private var showModal: Bool = false
    
    var body: some View {
        
        NavigationView {
                
            OrderListView(orders: self.orderListVM.orders)
                .navigationTitle("Coffee Orders")
                .navigationBarItems(leading: Button(action: reloadOrders) {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(.red)
                }, trailing: Button(action: showAddCoffeeOrderView) {
                    Image(systemName: "plus")
                        .foregroundColor(.red)
                })
            
                .sheet(isPresented: $showModal) {
                    AddCoffeeOrderView(isPresent: self.$showModal)
                }
        }
    }
    
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
}

struct CoffeeOrderingAppMainView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeOrderingAppMainView()
    }
}
