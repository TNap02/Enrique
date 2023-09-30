//
//  AdvancedSettings.swift
//  Enrique
//
//  Created by Tristan Napier on 9/29/23.
//

import SwiftUI

struct AdvancedSettings: View {
    
    @AppStorage("plantName") var plantName = "Enrique"
    @AppStorage("waterFrequency") var waterFrequency = 7
    @AppStorage("rotationFrequency") var rotationFrequency = 7
    @AppStorage("weatherUnit") var weatherUnit: WeatherUnit = .F
    @AppStorage("shelterTemp") var shelterTemp = 55
    
    let weatherUnits = ["F", "C"]
    let shelterTemp1 = []
    
    var body: some View {
        NavigationStack{
            
            Form{
                Section(header: Text("General")){
                    LabeledContent("Plant Name", value: plantName)
                    
                    Stepper("Water every \(waterFrequency) days", value: $waterFrequency, in: 1...99)
                    
                    Stepper("Rotate \(plantName) every \(rotationFrequency) days", value: $rotationFrequency, in: 1...99)
                }
                
                Section(header: Text("Weather").foregroundStyle(Color.mint)){
                    Picker("Tempeture Unit", selection: $weatherUnit){
                        ForEach(WeatherUnit.allCases){ option in
                            Text(option.rawValue)
                        }
                    }
                    Picker("Shelter Plant Threshold", )
                    //.keyboardType(.decimalPad)
                }
                .foregroundColor(.white)
                .listRowBackground((Color.mint))
            }
        }
            .navigationTitle("Settings")
    }
}

    
enum WeatherUnit: String, CaseIterable, Identifiable{
    var id: Self{
        return self
    }
    
    case F
    case C
}

#Preview {
    AdvancedSettings()
}
