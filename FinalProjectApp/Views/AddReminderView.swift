//
//  AddReminderView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/16/23.
//

import SwiftUI

struct AddReminderView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let addReminder: (Reminder) -> Void
    
    @State var reminder = Reminder(title: "", dueDate: Date(), notes: "")
    
    var body: some View {
        NavigationView {
            Form {
                Section("TITLE") {
                    TextField("", text: $reminder.title)
                    if reminder.title.isEmpty {
                        Text("Title can not be empty")
                            .foregroundStyle(Color.red)
                            .font(.caption)
                    }
                }
                
                Section("DATE") {
                    DatePicker(
                        "",
                        selection: $reminder.dueDate,
                        in: Date()...,
                        displayedComponents: .date)
                        
                }
                
                Section("NOTES") {
                    TextEditor(text: $reminder.notes)
                        .frame(height: 200)
                }
            }
            .navigationTitle("Add Reminder")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel", action: cancelPressed)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done", action: donePressed)
                        .disabled(reminder.title == "")
                }
            }
        }
    }
    
    func cancelPressed() {
        dismiss()
    }
    
    func donePressed() {
        addReminder(reminder)
    }
}

#Preview {
    AddReminderView(addReminder: { _ in })
}
