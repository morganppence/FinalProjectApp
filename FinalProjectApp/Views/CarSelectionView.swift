//
//  CarSelectionView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/30/23.
//

import Foundation
import SwiftUI

struct CarSelectionView: View {
    @State var isOn: Bool = false
    @State private var selection = "Toyota"
    
    @State private var userInput: String = ""
    @State private var outputText: String = ""
    
    let make = ["Toyota", "Honda"]
    let model = ["4Runner", "Tacoma"]
    let year = ["2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023"]
    
    

    var body: some View {

        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 20, style:.continuous))
            
            VStack {
                Text("Enter Vehicle Info ")
                    .font(.largeTitle)
                    .padding()
                HStack{
                    Text("Select make: ")
                    Picker("Select Make", selection: $selection) {
                        ForEach(make, id: \.self) {
                            Text($0)
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                }
                HStack{
                    Text("Select Model")
                    Picker("Select Model", selection: $selection) {
                        ForEach(model, id: \.self) {
                            Text($0)
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                }
                HStack{
                    Text("Select Year")
                    Picker("Select Year", selection: $selection) {
                        ForEach(year, id: \.self) {
                            Text($0)
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                }
                HStack {
                    TextField("Enter mileage", text: $userInput)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        outputText = "mileage: \(userInput)"
                    }) {
                        Text("Submit")
                    }
                    .padding()
                    
                    Text(outputText)
                        .padding()
                }
            }
        }
        
        .edgesIgnoringSafeArea(.all)
    
    }
}
#Preview {
    CarSelectionView()
}
