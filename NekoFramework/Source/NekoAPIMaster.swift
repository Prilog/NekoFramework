//
//  NekoAPIMaster.swift
//  NekoFramework
//
//  Created by Семен Трапезников on 06.11.2018.
//  Copyright © 2018 Prilog. All rights reserved.
//

import Foundation

open class NekoAPIMaster {
    //API account id
    private let URLHeader: String = "http://api.openweathermap.org/data/2.5/"
    private let URLID: String = "&APPID="
    private let cityHeader: String = "weather?q="
    private let id: String
    
    init(APIid: String) {
        self.id = APIid
    }
    
    private func getRequest(request: String) -> Data {
        let url : URL = URL(string: URLHeader + request + URLID + id)!
        var result : Data = Data()
        URLSession.shared.dataTask(with: url) { data, response, error in
            result = data!
            }.resume()
        return result
    }
    
    private func requestSomething(request: String) throws -> NekoLocalWeather {
        return try NekoJSONParser().parse(data: getRequest(request: request))
    }
    
    func requestCity(name: String) throws -> NekoLocalWeather {
        return try requestSomething(request: cityHeader + name)
    }
}

enum APIRequsetError: Error {
    case message(string: String)
}
