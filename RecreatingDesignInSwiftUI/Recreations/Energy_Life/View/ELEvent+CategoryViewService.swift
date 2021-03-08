//
//  ELEventCategory+Color.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import SwiftUI

extension ELEvent.Category {
    var title: String {
        switch self {
        case .professional:
            return "Professional Events"
        case .social:
            return "Social Events"
        case .concert:
            return "Concerts & Theatre"
        case .withFriends:
            return "Events with Friends"
        }
    }
    
    var imageName: String {
        switch self {
        case .professional:
            return "el_suitcase"
        case .social:
            return "el_megaphone"
        case .concert:
            return "el_tragedy_comedy_masks"
        case .withFriends:
            return "el_friends"
        }
    }
    
    var image: Image {
        Image(imageName)
    }
    
    var color: Color {
        switch self {
        case .professional:
            return .elRed
        case .social:
            return .elTeal
        case .concert:
            return .elPurple
        case .withFriends:
            return .elOrange
        }
    }
}
