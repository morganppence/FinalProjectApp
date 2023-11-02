//
//  ReminderView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI

struct ReminderView: View {
    @State var isOn: Bool = false
    

    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            
            /*VStack{
                Text("Hello, Morgan!")
                    .fontWeight(.bold)
                Text("Welcome to your home page")
                    .foregroundColor(.blue)
                
                
            }*/
            .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 20, style:.continuous))
            
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
}
