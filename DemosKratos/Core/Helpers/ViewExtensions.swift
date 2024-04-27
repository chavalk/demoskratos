//
//  ViewExtensions.swift
//  DemosKratos
//
//  Created by Jose Garcia on 4/26/24.
//

import SwiftUI

// MARK: View extension for UI Building
extension View {
    // MARK: Disabling with opacity
    func disabledWithOpacity(_ condition: Bool) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.6 : 1)
    }
}
