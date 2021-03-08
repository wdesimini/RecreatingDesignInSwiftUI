//
//  EnergyLife+Font.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import SwiftUI

extension Font {
    static func elFont(size: CGFloat) -> Font { .custom("Avenir-Book", size: size) }
    static func elMediumFont(size: CGFloat) -> Font { .custom("Quicksand-Medium", size: size) }
    static func elSemiBoldFont(size: CGFloat) -> Font { .custom("Quicksand-SemiBold", size: size) }
    static func elBoldFont(size: CGFloat) -> Font { .custom("Quicksand-Bold", size: size) }
}
