//
//  ELEvent.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import Foundation

struct ELEvent {
    let category: Category
    let title: String
    let subtitle: String
    let time: TimeInterval
    let location: String
    let cost: Int
    
    var dateDescription: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        let date = Date(timeIntervalSince1970: time)
        return formatter.string(from: date)
    }
    
    var priceDescription: String {
        "$\(cost / 100)"
    }
}
