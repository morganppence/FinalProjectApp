//
//  NavigationBar.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/25/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case car
    case newspaper
    case timer
    case exclamationmark
    case map
}

struct NavigationBar: View {
    @Binding var selectedTab: Tab
    private var fillIcon: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
               
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillIcon : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
                
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    NavigationBar(selectedTab: .constant(.map))
}
