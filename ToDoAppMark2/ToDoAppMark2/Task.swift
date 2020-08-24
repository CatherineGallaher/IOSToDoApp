//
//  Task.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/14/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import SwiftUI
import Foundation

struct Task: Hashable, Codable
{
    var name: String
    var description: String
    var dueDate: Date
    var tags: [Tag]
    var complete: Bool = false
    
    
    init(name: String, description: String, dueDate: Date, tags: Array<Tag>)
    {
        self.name = name
        self.description = description
        self.dueDate = dueDate
        self.tags = tags
    }
    
    init(name: String, description: String, dueDate: Date)
    {
        self.name = name
        self.description = description
        self.dueDate = dueDate
        self.tags = []
    }
    
    mutating func addTag(newTag: Tag)
    {
        self.tags.append(newTag)
    }
    
    mutating func removeTag(oldTag: Tag)
    {
        let index = tags.firstIndex(of: oldTag)
        self.tags.remove(at: index!)
    }
    
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
