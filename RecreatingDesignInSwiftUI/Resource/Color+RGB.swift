//
//  Color+RGB.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import SwiftUI

extension Color {
    init(r: Double, g: Double, b: Double) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0)
    }
}
