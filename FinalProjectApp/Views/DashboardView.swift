//
//  DashboardView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI


struct DashboardView: View {
    @State var isOn: Bool = false
    @State private var vehicle = VehicleData.examples()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: BasicInfoView()) {
                    DashCardView()
                }
                NavigationLink(destination: ReminderView()) {
                    ReminderCardView()
                }
                NavigationLink(destination: LogPageView()) {
                    DashboardLogCardView()
                }
            }
            .navigationTitle("Your Dashboard")
        }
        /*
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(vehicle) { vehicle in DashboardCardView(vehicle: vehicle)
                    }
                }.padding()
            }
            .navigationTitle("Dashboard")
        }*/
        
        
    }
}



struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

