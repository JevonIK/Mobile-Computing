//
//  CounterVM.swift
//  W05_Jevon
//
//  Created by student on 09/10/25.


import Foundation
import SwiftUI

@Observable
final class CounterVM{
    var count: Int = 0
    var isEven: Bool {count % 2 == 0}
    
    func increment(){count += 1}
    func decrement(){count -= 1}
    func reset() {count = 0}
}
