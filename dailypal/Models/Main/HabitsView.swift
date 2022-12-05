//
//  HabitsView.swift
//  dailypal
//
//  Created by Tobias Bartz on 05.12.22.
//

import SwiftUI

struct HabitsView: View {
    @FetchRequest(entity: Habit.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Habit.dateAdded, ascending: false)], predicate: nil, animation: .easeInOut) var habits: FetchedResults<Habit>
    
    @StateObject var habitModel: HabitViewModel = .init()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ScrollView(habits.isEmpty ? .init() : .vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        Button {
                            habitModel.addNewHabit.toggle()
                        } label: {
                            Label {
                                Text("New habit")
                            } icon: {
                                Image(systemName: "plus.circle")
                            }
                            .font(.callout.bold())
                            .foregroundColor(.white)
                        }
                        .padding(.top,15)
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Habits")
        }
        .navigationViewStyle(.stack)
        .preferredColorScheme(.dark)
        .sheet(isPresented: $habitModel.addNewHabit) {
            
        } content: {
            
        }
    }
}

struct HabitsView_Previews: PreviewProvider {
    static var previews: some View {
        HabitsView()
    }
}
