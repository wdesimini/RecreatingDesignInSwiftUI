//
//  ELEvent+Sample.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/9/21.
//

import Foundation

extension ELEvent {
    static var sample: ELEvent {
        ELEvent(
            category: .concert,
            title: "Scorpions",
            subtitle: "World Tour - ANGELS TOUR",
            time: Date().timeIntervalSince1970,
            location: "PALACE Stadium",
            cost: 9000
        )
    }
}
