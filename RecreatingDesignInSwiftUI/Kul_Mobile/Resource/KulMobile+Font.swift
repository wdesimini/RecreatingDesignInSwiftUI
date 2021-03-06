//
//  KulMobile+Font.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/5/21.
//

import SwiftUI

// family Superclarendon
//   font Superclarendon-Regular
//   font Superclarendon-BoldItalic
//   font Superclarendon-Light
//   font Superclarendon-BlackItalic
//   font Superclarendon-Italic
//   font Superclarendon-LightItalic
//   font Superclarendon-Bold
//   font Superclarendon-Black

private let family = "Superclarendon"

extension Font {
    static func kmRegular(size: CGFloat) -> Font { .custom("\(family)-Regular", size: size) }
    static func kmBold(size: CGFloat) -> Font { .custom("\(family)-Bold", size: size) }
    static func kmSecondaryRegular(size: CGFloat) -> Font { .custom("Staatliches-Regular", size: size) }
}
