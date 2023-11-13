//
//  LogPageView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI

struct LogPageView: View {
    @State var isOn: Bool = false
    

    var body: some View {
        ZStack{
            LinearGradient(colors: [.green,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            
            VStack{
                Text("Hello, Morgan!")
                    .fontWeight(.bold)
                Text("See you recent service and update logs here")
                    .foregroundColor(.blue)
                
                
            }
            .padding()
            .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 20, style:.continuous))
            
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
}
