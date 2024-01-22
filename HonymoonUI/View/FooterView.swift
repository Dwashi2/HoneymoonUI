//
//  FooterView.swift
//  HonymoonUI
//
//  Created by Daniel Washington Ignacio on 21/01/24.
//

import SwiftUI
struct FooterView: View {
    //MARK: - Properties
    
    @Binding var showBookingAlert: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                // Action
                //print("Success!")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            }) {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline,design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(.pink)
                    .background(
                        Capsule().stroke(.pink, lineWidth: 2)
                    )
            }
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
  @State static var showAlert: Bool = false
  
  static var previews: some View {
    FooterView(showBookingAlert: $showAlert)
      .previewLayout(.fixed(width: 375, height: 80))
  }
}
