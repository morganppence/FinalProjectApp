//
//  ReminderView.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 10/26/23.
//

import Foundation
import SwiftUI

struct ReminderView: View {
    
    @Environment(Model.self) var model: Model
    
    @State var isOn: Bool = false
    
    @State var isShowingAddReminderView = false

    var body: some View {
        List {
            ForEach(model.currentCar.reminders) { reminder in
                NavigationLink(
                    destination: ReminderDetailView(reminder: reminder)) {
                        VStack(alignment: .leading) {
                            Text(reminder.title)
                                .font(.headline)
                            Text(reminder.notes)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                }
            }
        }
        .navigationBarTitle("Car Service Updates")
        .toolbar {
            Button(action: addPressed) {
                Image(systemName: "plus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20.0)
            }
        }
        .sheet(isPresented: $isShowingAddReminderView, content: {
            AddReminderView(addReminder: addReminder)
        })
    }
    
    func addPressed() {
        isShowingAddReminderView = true
    }
    
    func addReminder(reminder: Reminder) {
        print(#function)
        model.currentCar.reminders.append(reminder)
        model.save()
        isShowingAddReminderView = false
    }
}

struct ReminderDetailView: View {
    let reminder: Reminder

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(reminder.title)
                .font(.title)
            Text(reminder.notes)
                .font(.body)
            Spacer()
        }
        .padding()
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
