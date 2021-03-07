//
//  KulMobileTabloidDataService.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import Foundation

class KulMobileTabloidDataService: ObservableObject {
    @Published var tabloids = [KulMobileTabloid]()
    
    init() {
        do {
            if let bundlePath = Bundle.main.path(forResource: "KulMobileTabloidsJSON", ofType: "json"),
               let data = try String(contentsOfFile: bundlePath).data(using: .utf8)
            {
                tabloids = try JSONDecoder().decode([KulMobileTabloid].self, from: data)
            }
        } catch {
            print(error)
        }
    }
}
