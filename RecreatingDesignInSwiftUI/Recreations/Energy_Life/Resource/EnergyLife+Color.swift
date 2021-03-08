//
//  EnergyLife+Color.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import SwiftUI

extension Color {
    private enum ELColor {
        case offWhite, red, teal, purple, orange, darkBlue
        
        var rgb: (r: Double, g: Double, b: Double) {
            switch self {
            case .offWhite:
                return (243, 247, 251)
            case .red:
                return (252, 86, 104)
            case .teal:
                return (65, 213, 225)
            case .purple:
                return (77, 82, 224)
            case .orange:
                return (253, 142, 55)
            case .darkBlue:
                return (27, 27, 75)
            }
        }
    }
    
    private init(elColor: ELColor) {
        let rgb = elColor.rgb
        self.init(r: rgb.r, g: rgb.g, b: rgb.b)
    }
    
    static var elOffWhite: Color { .init(elColor: .offWhite) }
    static var elRed: Color { .init(elColor: .red) }
    static var elTeal: Color { .init(elColor: .teal) }
    static var elPurple: Color { .init(elColor: .purple) }
    static var elOrange: Color { .init(elColor: .orange) }
    static var elDarkBlue: Color { .init(elColor: .darkBlue) }
}
