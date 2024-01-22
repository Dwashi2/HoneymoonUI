//
//  GuideView.swift
//  HonymoonUI
//
//  Created by Daniel Washington Ignacio on 21/01/24.
//

import SwiftUI

struct GuideView: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destinantion foryour romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuiderComponent(title: "Like", subtitle: "Swipe right", description: "Do you like this destination? Touch the screen and swipe right. It will be saved to the favourites", icon: "heart.circle")
                    
                    GuiderComponent(title: "Dismiss", subtitle: "Swipe left", description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it", icon: "xmark.circle")
                    
                    GuiderComponent(title: "Book", subtitle: "Tap the button", description: "our selection of honeymoon resorts is perfect setting for you to embark on your new life together", icon: "checkmark.square")
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    // Action
                    //print("A button was tapped.")
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    GuideView()
}
