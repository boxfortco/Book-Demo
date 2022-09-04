//
//  ProfilePic.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct ProfilePic: View {
    
    var profile: Profile
    var body: some View {
        VStack {
            Text(profile.avatar)
                .font(.system(size: 80))
                .padding()
                .background(
                    RadialGradient(
                        gradient: Gradient(colors: [profile.backColor, .white]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 100).clipShape(Circle()))
                .shadow(color: ColorConstants.darkBluishGrayColor, radius: 5, x: 2, y: 2)
                .shadow(color: ColorConstants.darkBluishGrayColor, radius: 5, x: -2, y: -2)
            
            Text(profile.name)
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ProfilePic(profile: Profile(name: "Lion", avatar: "🦁", backColor: Color.yellow))
        }
        
    }
}
