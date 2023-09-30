//
//  Side Menu.swift
//  Enrique
//
//  Created by Tristan Napier on 9/29/23.
//

import SwiftUI

struct Side_Menu: View {
    
    @Binding var isSideMenuOpen: bool
    
    var sideMenuWidth = UIScreen.main.bounds.size.width * 0.6
    
    
    var body: some View {
        ZStack {
            Color.green
            VStack{
                Text("Setting 1")
                Text("Setting 2")
                Text("Setting 3")
                Spacer()
                Text("Adanced Settings")
            }
            //.offset(-50)
            .frame(width: sideMenuWidth)
        }
    }
}

#Preview {
    Side_Menu()
}
