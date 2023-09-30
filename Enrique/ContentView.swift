//
//  ContentView.swift
//  Enrique
//
//  Created by Tristan Napier on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isSideMenuOpen = false
    var body: some View {
        ZStack{
            Color.mint.ignoresSafeArea()
                .accentColor(Color.black)
            if(isSideMenuOpen){
                Color.black.opacity(0.5).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        withAnimation{
                            isSideMenuOpen.toggle()
                        }
                    }
            }
            

                        // Side Menu
                        Side_Menu(isSideMenuOpen: $isSideMenuOpen)
                            .frame(width: UIScreen.main.bounds.width * 0.6) // Adjust the width as per your requirement
                            .offset(x: isSideMenuOpen ? 0 : -UIScreen.main.bounds.width * 0.6)
                            .animation(.easeInOut(duration: 0.3))
                    }
            VStack(){

                //C1
                HStack(alignment: .center){
                    //HStack 1
                    Button{
                        isSideMenuOpen.toggle()
                    }label: {
                        Image(systemName: "line.3.horizontal")
                    }.padding(.leading, 25.0).contentShape(Rectangle())
                    Spacer()
                    
                        
                    
                    Text("HStack2")

                    Text("HStack3")
                }
                .padding(.bottom, 10.0)
                
                //C2
                //will be text here
                Text("Streak: ")
                .padding(.bottom, 10.0)
                
                //C3
                //Will be button here
                Text("C3")
                    .padding(.bottom, 10)
                
                Spacer()
                //C4
                //will be image here
                Text("C4")
                    .padding(.vertical)
                Image("BigPlant")
                    .resizable()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: 300.0)
                    
                    
                    
                Spacer()
                //C5
                HStack{
                    //HStack 2
                    Text("HStack1")
                    Text("HStack2")
                    Text("HStack3")
                }
                
            }
        }
        
    }
}
#Preview {
    ContentView()
}
