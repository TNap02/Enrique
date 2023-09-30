//
//  ContentView.swift
//  Enrique
//
//  Created by Tristan Napier on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false

    
    var body: some View {
        let drag = DragGesture()
            .onEnded{
                if $0.translation.width < -20{
                    withAnimation{
                        self.showMenu = false
                    }
                }
            }
        NavigationStack{
            GeometryReader{ geometry in
                ZStack (alignment: .leading)
                {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/1.6 : 0)
                        .disabled(self.showMenu ? true : false)
                    
                    if self.showMenu{
                        SideMenu()
                            .frame(width: geometry.size.width/1.6)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Test")

            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        withAnimation{
                            self.showMenu.toggle()
                        }
                    }){
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                }
            }

        }
    }
}

struct MainView: View{
    
    @Binding var showMenu: Bool
    var body: some View{
        VStack(){

                        //C1
                        HStack(alignment: .center){
                            //HStack 1
                        
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

#Preview {
    ContentView()
}
