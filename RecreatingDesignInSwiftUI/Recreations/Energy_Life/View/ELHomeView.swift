//
//  ELHomeView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import SwiftUI

// reference https://dribbble.com/shots/7171328-Mobile-app-Energy-Life

struct ELHomeView: View {
    @State var user: ELUser
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 32) {
                ELUserSnapshotView(user: user)
                    .frame(height: 95)
                
                HStack(spacing: 0) {
                    Text("Hello, ")
                        .font(.elFont(size: 30))
                    
                    Text("\(user.firstName)!")
                        .font(.elSemiBoldFont(size: 30))
                }
                
                Spacer()
            }
            .padding(32)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button(
                    action: { print("hamburger tapped") },
                    label: { Image("hamburger") }
                ),
                trailing: Button(
                    action: { print("hamburger tapped") },
                    label: { Image("magnifying_glass") }
                )
            )
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("\(user.state)")
                        .font(.elMediumFont(size: 15))
                        .foregroundColor(.elDarkBlue)
                        .opacity(0.75)
                }
            }
            .onAppear {
                UINavigationBar.appearance().barTintColor = .white
                UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
            }
        }
    }
}

struct ELHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ELHomeView(user: .sample)
    }
}
