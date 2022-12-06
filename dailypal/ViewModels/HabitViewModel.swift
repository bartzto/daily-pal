//
//  HabitViewModel.swift
//  dailypal
//
//  Created by Tobias Bartz on 05.12.22.
//

import SwiftUI
import CoreData

class HabitViewModel: ObservableObject {
    @Published var addNewHabit: Bool = false
    
    @Published var title: String = ""
    @Published var habitColor: String = "Card-1"
    @Published var weekDays: [String] = []
    @Published var isRemainderOn: Bool = false
    @Published var remainderText: String = ""
    @Published var remainderDate: Date = Date()
    
    @Published var showTimePicker: Bool = false
    
    func addHabit(context: NSManagedObjectContext)->Bool {
        let habit = Habit(context: context)
        habit.title = title
        habit.color = habitColor
        habit.weekDays = weekDays
        habit.isRemainderOn = isRemainderOn
        habit.remainderText = remainderText
        habit.notificationDate = remainderDate
        habit.notificationIDs = []
        
        if isRemainderOn {
            
        } else {
            if let _ = try? context.save() {
                return true
            }
        }
        return false
    }
    
    func resetData() {
        title = ""
        habitColor = "Card-1"
        weekDays = []
        isRemainderOn = false
        remainderDate = Date()
        remainderText = ""
    }
    
    func doneStatus()->Bool {
        let remainderStatus = isRemainderOn ? remainderText == "" : false
        
        if title == "" || weekDays.isEmpty || remainderStatus {
            return false
        }
        
        return true
    }
}
