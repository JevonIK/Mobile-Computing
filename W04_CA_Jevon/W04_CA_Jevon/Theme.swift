//
//  Theme.swift
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import SwiftUI

enum Scheme: String, CaseIterable, Identifiable {
    case light, dark, system
    
    var id: Self { self }


    var displayName: String {
        switch self {
        case .light:
            return "Light"
        case .dark:
            return "Dark"
        case .system:
            return "System Default"
        }
    }
    
 
    var colorScheme: ColorScheme? {
        switch self {
        case .light:
            return .light
        case .dark:
            return .dark
        case .system:
            return nil
        }
    }
}
