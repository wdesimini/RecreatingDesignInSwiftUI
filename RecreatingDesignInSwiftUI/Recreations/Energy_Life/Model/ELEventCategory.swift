//
//  ELEventCategory.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

enum ELEventCategory {
    case type(_ eventType: ELEvent.EventType)
    case withFriends
    
    var title: String {
        switch self {
        case .type(let eventType):
            switch eventType {
            case .professional:
                return "Professional Events"
            case .social:
                return "Social Events"
            case .concert:
                return "Concerts & Theatre"
            }
        case .withFriends:
            return "Events with Friends"
        }
    }
    
    var imageName: String {
        switch self {
        case .type(let eventType):
            switch eventType {
            case .professional:
                return "el_suitcase"
            case .social:
                return "el_megaphone"
            case .concert:
                return "el_tragedy_comedy_masks"
            }
        case .withFriends:
            return "el_friends"
        }
    }
}
