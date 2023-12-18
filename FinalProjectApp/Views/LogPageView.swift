//
//  LogPageView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI

struct JournalEntry: Identifiable, Codable {
    let id: UUID
    let text: String
    let date: Date
    
    init(id: UUID = UUID(), text: String, date: Date) {
        self.id = id
        self.text = text
        self.date = date
    }
}

struct LogPageView: View {
    
    @Environment(Model.self) var model

    @State var isOn: Bool = false
    @State private var newEntryText: String = ""

    var body: some View {
        
        VStack {
            TextField("Add New Log", text: $newEntryText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Save Entry") {
                let logEntry = JournalEntry(id: UUID(), text: newEntryText, date: Date())
                model.currentCar.logs.append(logEntry)
                model.save()
                newEntryText = ""
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)

            NavigationLink(destination: JournalEntriesView().environment(model)) {
                Text("View All Entries")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
            .padding()
            .navigationTitle("Log Page")
    }
}

struct JournalEntriesView: View {
    
    @Environment(Model.self) var model

    var body: some View {
        List {
            ForEach(model.currentCar.logs) { entry in
                VStack(alignment: .leading) {
                    Text(entry.text)
                    Text("\(entry.date)")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle("Log Entries")
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        LogPageView()
    }
}
