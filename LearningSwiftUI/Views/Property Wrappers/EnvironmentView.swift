//
//  EnvironmentView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 25/04/23.
//

import SwiftUI

// @EnvironmentObject
// Se usa en los casos en los que un @ObservedObject tendria que enviarse mas de una vez
// Se propaga la variable en distintas views

struct EnvironmentView: View {
    
    @EnvironmentObject var myUser: UserData
    
    var body: some View {
        Text(myUser.name)
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView().environmentObject(UserData())
    }
}
