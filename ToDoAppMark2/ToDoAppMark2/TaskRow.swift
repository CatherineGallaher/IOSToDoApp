//
//  TaskRow.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/14/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var userData: UserData
    var task: Task

    var body: some View {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        let date = formatter.string(from: task.dueDate)
        return HStack {
            Button(action: {
                self.userData.tasks[0].complete.toggle()
            }) {
                if task.complete {
                    Image("checkBoxFILLED ")
                }
                else {
                    Image("checkBoxOUTLINE ")
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(task.name)
                    Spacer()
                    Text(date)
                }
                Text(task.description)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskRow(task: taskData[0])
            TaskRow(task: taskData[1])
                
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
