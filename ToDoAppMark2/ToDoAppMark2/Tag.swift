//
//  Tag.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/24/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import Foundation

struct Tag: Hashable, Codable {
    var name: String
    init(name: String)
    {
        self.name = name 
    }
}
