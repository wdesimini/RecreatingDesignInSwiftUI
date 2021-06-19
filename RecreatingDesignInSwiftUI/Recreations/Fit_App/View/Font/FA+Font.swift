//
//  FA+Font.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 6/18/21.
//

import SwiftUI

fileprivate enum FAFontType: String {
    private static let familyName = "BaiJamjuree"
    
    case light = "Light"
    case regular = "Regular"
    case medium = "Medium"
    case semibold = "SemiBold"
    case bold = "Bold"
    
    var fontName: String {
        "\(FAFontType.familyName)-\(rawValue)"
    }
}

extension Font {
    private static func faFont(_ type: FAFontType, size: CGFloat) -> Font {
        .custom(type.fontName, size: size)
    }
    
    static func faLight(size: CGFloat) -> Font { faFont(.light, size: size) }
    static func faRegular(size: CGFloat) -> Font { faFont(.regular, size: size) }
    static func faMedium(size: CGFloat) -> Font { faFont(.medium, size: size) }
    static func faSemiBold(size: CGFloat) -> Font { faFont(.semibold, size: size) }
    static func faBold(size: CGFloat) -> Font { faFont(.bold, size: size) }
}
