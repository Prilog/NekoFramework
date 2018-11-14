//
//  NekoLocalWeather.swift
//  NekoFramework
//
//  Created by Семен Трапезников on 06.11.2018.
//  Copyright © 2018 Prilog. All rights reserved.
//

import Foundation

open class NekoLocalWeather: Decodable{
    
    let coord: coordinates
    let weatherInfo: weather
    let base: String
    let mainInfo: main
    let windInfo: wind
    let cloudsInfo: clouds
    let rainInfo: rain
    let snowInfo: snow
    let dt: Int
    let sysInfo: sys
    let cityID: Int
    let cityName: String
    let cod: Int
    
    enum CodingKeys : String, CodingKey {
        case coord
        case weatherInfo = "weather"
        case base
        case mainInfo = "main"
        case windInfo = "wind"
        case cloudsInfo = "clouds"
        case rainInfo = "rain"
        case snowInfo = "snow"
        case dt
        case sysInfo = "sys"
        case cityID = "id"
        case cityName = "name"
        case cod
    }
    
}

class coordinates: Decodable {
    let lon: Double
    let lat: Double
}

class weather: Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

class main: Decodable {
    let temp: Double
    let pressure: Double
    let humidity: Double
    let temp_min: Double
    let temp_max: Double
    let sea_level: Double
    let grnd_level: Double
}

class wind: Decodable {
    let speed : Double
    let deg: Double
}

class clouds: Decodable {
    let all: Double
}

class rain: Decodable {
    let h: Double
}

class snow: Decodable {
    let h: Double
}

class sys: Decodable {
    let type: Int
    let id: Int
    let message: Double
    let country: String
    let sunrise: Int
    let sunset: Int
}
