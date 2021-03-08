//
//  ELEventCategoryItem.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import SwiftUI

struct ELEventCategoryItem: View {
    let category: ELEventCategory
    
    var body: some View {
        ZStack {
            itemColor.edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    
                    Text("\(category.title)")
                        .font(.elBoldFont(size: 15))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                VStack {
                    Image("\(category.imageName)")
                    
                    Spacer()
                }
            }
            .padding()
        }
        .cornerRadius(16)
    }
    
    private var itemColor: Color {
        switch category {
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

struct ELEventCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        ELEventCategoryItem(category: .type(.professional))
            .previewLayout(.fixed(width: 176, height: 96))
    }
}
