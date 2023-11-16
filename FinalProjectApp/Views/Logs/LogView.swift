//
//  LogView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 11/16/23.
//

import SwiftUI
import Foundation

struct JournalEntry: Identifiable {
    let id = UUID()
    let text: String
    let date: Date
}

class JournalViewModel: ObservableObject {
    @Published var entries: [JournalEntry] = []

    func addEntry(text: String) {
        let entry = JournalEntry(text: text, date: Date())
        entries.append(entry)
    }
}

struct ContentLogView: View {
    @State private var newEntryText: String = ""
    @ObservedObject private var viewModel = JournalViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TextField("Add New Log", text: $newEntryText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button("Save Entry") {
                    viewModel.addEntry(text: newEntryText)
                    newEntryText = ""
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)

                NavigationLink(destination: JournalEntriesView(entries: viewModel.entries)) {
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
}

struct JournalEntriesView: View {
    var entries: [JournalEntry]

    var body: some View {
        List(entries) { entry in
            VStack(alignment: .leading) {
                Text(entry.text)
                Text("\(entry.date)")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle("Log Entries")
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        ContentLogView()
    }
}
