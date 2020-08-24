//
//  TaskDetail.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/20/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import SwiftUI

struct TaskDetail: View {
    var task: Task
    
    var body: some View {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        let date = formatter.string(from: task.dueDate)
        return VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(task.name)
                        .font(.title)
                    Spacer()
                    Text(date)
                }
                
                HStack {
                    ForEach(task.tags, id: \.self) {tag in
                        TagView(tag: tag)
                    }
                }
                

                HStack {
                    Image("checkBoxOUTLINE ")
                    Text("Mark as Complete")
                }.padding(.bottom, -0.5).font(.subheadline)
                
                //task.tags.forEach() { Text($0) }
//                task.tags.forEach { tag in
//                    Text(tag)
//                    .font(.subheadline)
//                    .padding(.bottom)
//                }
                
                
                HStack(alignment: .top) {
                    Text(task.description)
                    
                }.font(.subheadline)
            }
            .padding()

            Spacer()
        }
    }
}

struct TaskDetail_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetail(task: taskData[1])
    }
}
