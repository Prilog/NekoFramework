//
//  NekoJSONParser.swift
//  NekoFramework
//
//  Created by Семен Трапезников on 06.11.2018.
//  Copyright © 2018 Prilog. All rights reserved.
//

import Foundation

class NekoJSONParser {
    func parse(data: Data) throws -> NekoLocalWeather {
        guard let weather = try? JSONDecoder().decode(NekoLocalWeather.self, from: data) else {
            throw JSONParsingError.message(string: "Couldn't decode data")
        }
        return weather
    }
}

enum JSONParsingError: Error {
    case message(string: String)
}
