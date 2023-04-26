//
//  ListDetailView2.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 22/04/23.
//

import SwiftUI

struct ListDetailView2: View {
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3)).shadow(color: .gray, radius: 5)
            
            HStack {
                Text(programmer.name)
                    .font(.largeTitle)

            }

            Text(programmer.language)
                .font(.title)
            Spacer()
        }
    }
}

struct ListDetailView2_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView2(programmer: Programmer(id: 1, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person.fill"), favourite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}


