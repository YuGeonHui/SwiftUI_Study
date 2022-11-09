//
//  StockRankViewModel.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/11/09.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    
    @Published var models: [StockModel] = StockModel.list
    
    var numberOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
    
}
