//
//  TaskViewModel.swift
//  W05_Jevon
//
//  Created by student on 09/10/25.
//

import Foundation
import Observation
import SwiftUI

@Observable
final class TaskViewModel {
    var tasks: [Task] = [
        .init(title: "Beli Booster"),
        .init(title: "Beli Celana Baru", isCompleted: true)
    ]
    
    func add(_ title: String){
        let clean = title.trimmingCharacters(in: .whitespacesAndNewlines)
        if clean.isEmpty { return }
        tasks.append(.init(title: clean))
    }
    
    func remove (at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
    
    func toggle(_ task:Task){
        // dimana id yg dipilih itu sm dgn id yg di dalam task
        // firstindex = mengbalikan index pertama yg ditemukan
        if let idx = tasks.firstIndex(where: {$0.id == task.id}){
            tasks[idx].isCompleted.toggle()
        }
    }
}
