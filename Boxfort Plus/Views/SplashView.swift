//
//  SplashView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                if isActive {
                    ContentView()
                } else {
                    SplashAnimationView()
                        .frame(width: 300, height: 300)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        self.isActive.toggle()
                    }
                
                }
                }
            }
            }
        }


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
