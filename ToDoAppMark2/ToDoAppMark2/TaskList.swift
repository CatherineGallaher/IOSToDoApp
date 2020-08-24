//
//  TaskList.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/14/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import SwiftUI

struct TaskList: View {
    //@State var isComplete = false
    var body: some View {
        NavigationView {
            List{
                ForEach(taskData, id: \.self) {task in
                    NavigationLink(destination: TaskDetail(task: task)){
                        TaskRow(task: task)
                    }
                }
                .navigationBarTitle(Text("To Do List"))
            }
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11 Pro", "iPad (7th generation)"], id: \.self) { deviceName in
            TaskList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
