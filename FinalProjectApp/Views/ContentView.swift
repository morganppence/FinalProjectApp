//
//  ContentView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .timer
    init() {
        UINavigationBar.appearance().isHidden = true
    }
    
    var body: some View {
            TabView {
                /*BasicInfoView()
                    .tabItem {
                        Label("Basics", systemImage: "car")
                    }
                LogPageView()
                    .tabItem {
                        Label("Logs", systemImage: "newspaper")
                    }*/
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "timer")
                    }
                /*ReminderView()
                    .tabItem {
                        Label("Reminders", systemImage: "exclamationmark")
                    }
                ServiceView()
                    .tabItem {
                        Label("Service", systemImage: "map")
                    }*/
            }
    
        
    }
}

#Preview {
    ContentView()
}
