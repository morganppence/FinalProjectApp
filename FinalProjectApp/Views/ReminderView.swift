//
//  ReminderView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI

struct ServiceUpdate: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var details: String
}

struct ReminderView: View {
    @State var isOn: Bool = false
    
    let serviceUpdates: [ServiceUpdate] = [
        ServiceUpdate(title: "Oil Change", description: "Replace engine oil and oil filter", details: "Recommended every 5,000 miles for a Toyota 4Runner."),
        ServiceUpdate(title: "Brake Inspection", description: "Check and replace brake pads if necessary", details: "Ensure optimal braking performance. Based on a recent log, you should need this service around 12/08."),
        ServiceUpdate(title: "Tire Rotation", description: "Rotate tires for even wear", details: "Recommended every 6,000-8,000 miles."),
        ServiceUpdate(title: "Air Filter Replacement", description: "Replace engine air filter", details: "Improve engine performance and fuel efficiency."),

    ]

    var body: some View {
        NavigationView {
            List(serviceUpdates) { update in
                NavigationLink(destination: ServiceUpdateDetailView(serviceUpdate: update)) {
                    VStack(alignment: .leading) {
                        Text(update.title)
                            .font(.headline)
                        Text(update.description)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationBarTitle("Car Service Updates")
        }
    }
}

struct ServiceUpdateDetailView: View {
    var serviceUpdate: ServiceUpdate

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(serviceUpdate.title)
                .font(.title)
            Text(serviceUpdate.details)
                .font(.body)
            Spacer()
        }
        .padding()
        .navigationBarTitle("Additional Details")
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
