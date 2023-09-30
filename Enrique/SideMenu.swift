//
//  SideMenu.swift
//  Enrique
//
//  Created by Tristan Napier on 9/29/23.
//

import SwiftUI

struct SideMenu: View {
    @State private var homeNavPath = NavigationPath()
    
    var body: some View {
        VStack(alignment: .leading){
            
            NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                    HStack{
                        Image(systemName: "house")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("Home")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                
                .padding(.top,100)
            NavigationLink(destination: HowTo()){
                    HStack{
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("How to use")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top,30)
            
            NavigationLink(destination: About()){
                    HStack{
                        Image(systemName: "person.crop.circle.badge.questionmark")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("About")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .padding(.top,30)
                Spacer()
            NavigationLink(destination: AdvancedSettings()){
                    HStack{
                        Image(systemName: "gearshape")
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text("Settings")
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                    .padding(.bottom, 30)
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
        }
    }



#Preview {
    SideMenu()
}
