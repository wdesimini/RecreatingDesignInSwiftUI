//
//  ELEventCategory+Color.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import SwiftUI

extension ELEventCategory {
    var color: Color {
        switch self {
        case .type(let eventType):
            switch eventType {
            case .professional:
                return .elRed
            case .social:
                return .elTeal
            case .concert:
                return .elPurple
            }
        case .withFriends:
            return .elOrange
        }
    }
}
