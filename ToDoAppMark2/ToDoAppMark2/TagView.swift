//
//  TagView.swift
//  ToDoAppMark2
//
//  Created by Catherine Gallaher on 8/24/20.
//  Copyright © 2020 Catherine Gallaher. All rights reserved.
//

import SwiftUI

struct TagView: View {
    var tag: Tag
    var body: some View {
        Text(tag.name)
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .padding(.horizontal, 15)
            .padding(.vertical, 3)
            .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .background(Color(hue: 0.5, saturation: 0.039, brightness: 0.834))
            .cornerRadius(5)

            
            
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(tag: taskData[0].tags[0]).previewLayout(.fixed(width: 150, height: 50))
    }
}
