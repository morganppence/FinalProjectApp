//
//  Reminder.swift
//  FinalProjectApp
//
//  Created by Morgan Pence on 12/13/23.
//

import Foundation

struct Reminder: Equatable, Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

extension [Reminder] {
    func indexOfReminder(withId id: Reminder.ID) -> Self.Index {
        guard let index = firstIndex(where: { $0.id == id }) else {
            fatalError()
        }
        return index
    }
}

#if DEBUG
extension Reminder {
    static var sampleData = [
        Reminder(
            title: "Oil Change", dueDate: Date().addingTimeInterval(800.0),
            notes: "Replace engine oil and oil filter. Recommended every 5,000 miles for a Toyota 4Runner."),
        Reminder(
            title: "Brake Inspection", dueDate: Date().addingTimeInterval(14000.0),
            notes: "Check and replace brake pads if necessary. Ensure optimal braking performance. Based on a recent log, you should need this service around 12/08.", isComplete: true),
        Reminder(
            title: "Tire Rotation", dueDate: Date().addingTimeInterval(24000.0),
            notes: "Rotate tires for even wear. Recommended every 6,000-8,000 miles."),
        Reminder(
            title: "Air Filter Replacement", dueDate: Date().addingTimeInterval(3200.0),
            notes: "Replace engine air filter. Improve engine performance and fuel efficiency.", isComplete: true),
    ]
}
#endif
