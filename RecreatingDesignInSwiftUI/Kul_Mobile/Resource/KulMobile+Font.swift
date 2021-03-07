//
//  KulMobile+Font.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/5/21.
//

import SwiftUI

extension Font {
    static func kmRegular(size: CGFloat) -> Font { .custom("Superclarendon-Regular", size: size) }
    static func kmBold(size: CGFloat) -> Font { .custom("Superclarendon-Bold", size: size) }
    static func kmSecondaryRegular(size: CGFloat) -> Font { .custom("Staatliches-Regular", size: size) }
}
