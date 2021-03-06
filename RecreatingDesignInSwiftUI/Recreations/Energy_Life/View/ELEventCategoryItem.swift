//
//  ELEventCategoryItem.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import SwiftUI

struct ELEventCategoryItem: View {
    let category: ELEvent.Category
    
    var body: some View {
        ZStack {
            category.color.edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    
                    Text("\(category.title)")
                        .font(.elBoldFont(size: 15))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                VStack {
                    category.image
                    
                    Spacer()
                }
            }
            .padding()
        }
        .cornerRadius(16)
    }
}

struct ELEventCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        ELEventCategoryItem(category: .professional)
            .previewLayout(.fixed(width: 176, height: 96))
    }
}
