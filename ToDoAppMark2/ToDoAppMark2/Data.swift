//
//  Data.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/19/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import CoreLocation

let taskData: [Task] = load("taskData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(DateFormatter.MMddyy)
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

extension DateFormatter {
  static let MMddyy: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd/yy"
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter
  }()
}
