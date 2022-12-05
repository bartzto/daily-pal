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
    
    func resetData() {
        
    }
}
