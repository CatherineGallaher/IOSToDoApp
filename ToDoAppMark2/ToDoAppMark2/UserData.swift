//
//  UserData.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/27/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import Foundation

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var tasks = taskData
    
}
