//
//  AdvancedSettings.swift
//  Enrique
//
//  Created by Tristan Napier on 9/29/23.
//

import SwiftUI

struct AdvancedSettings: View {

    @State var water = UserDefaults.standard.integer(forKey: "water")
    @State private var customFrequency = ""
    
    var body: some View {
        ZStack{
            VStack(){
                HStack(){
                    Button{
                        //isSideMenuOpen.toggle()
                    }label: {
                        Image(systemName: "line.3.horizontal")
                    }.padding(.leading, 25.0).contentShape(Rectangle())
                    Text("")
                    Spacer()
                }
                Spacer()
                
                NavigationStack {
                            Form {
                                Section(header: Text("Watering Frequency")) {
                                    TextField("Enter Days", text: $customFrequency)
                                                            .keyboardType(.numberPad)
                                                            .onAppear {
                                                                // Set the customFrequency value to the stored wateringFrequency when the view appears
                                                                customFrequency = "\(water)"
                                                            }
                                    .pickerStyle(SegmentedPickerStyle())
                                }
                            }
                            .navigationTitle("Settings")
                        }
                
                
                
            }
            
        }
    }
        }
    


#Preview {
    AdvancedSettings()
}
