//
//  ViewExtensions.swift
//  DemosKratos
//
//  Created by Jose Garcia on 4/26/24.
//

import SwiftUI

// MARK: View extension for UI Building
extension View {
    // Closing all active keyboards
    func closeKeyboard() {
        UIApplication.shared.self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    // MARK: Disabling with opacity
    func disabledWithOpacity(_ condition: Bool) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.6 : 1)
    }
}
