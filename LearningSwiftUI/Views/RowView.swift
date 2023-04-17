//
//  RowView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 15/04/23.
//

// MARK: - Fila -

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar.resizable().frame(width: 40,height: 40)   // aligment por defecto center
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.language)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person.fill"), favourite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
