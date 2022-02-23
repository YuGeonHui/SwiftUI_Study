//
//  Weather.swift
//  Hello_SwiftUI
//
//  Created by geonhui Yu on 2022/02/23.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}


