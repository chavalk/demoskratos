//
//  Timestamp.swift
//  DemosKratos
//
//  Created by Jose Garcia on 6/27/24.
//

import Foundation
import Firebase

extension Timestamp {
    func timestampString() -> String {
//        let formatter = DateComponentsFormatter()
//        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
//        formatter.maximumUnitCount = 1
//        formatter.unitsStyle = .abbreviated
//        return formatter.string(from: self.dateValue(), to: Date()) ?? ""
        let formatter = DateFormatter()
        formatter.dateStyle = .short
//        formatter.timeStyle = .short
        return formatter.string(from: self.dateValue())
    }
}
