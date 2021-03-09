//
//  ELUser+HighlightedEvent.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/9/21.
//

extension ELUser {
    func highlightedEvent(_ highlight: ELEvent.Highlight) -> ELEvent? {
        var sorted = [ELEvent]()
        
        switch highlight {
        case .mostPopular:
            sorted = events.sorted(by: { $0.attendees.count > $1.attendees.count })
        case .friendFavorite:
            sorted = events.sorted(by: { friends(goingToEvent: $0).count > friends(goingToEvent: $1).count })
        case .latest:
            sorted = events.sorted(by: { $0.time > $1.time })
        }
        
        return sorted.first
    }
}
