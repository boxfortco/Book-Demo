//
//  SquareButton.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct SquareButton: View {
    
    var searchCategory: SearchCategory
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: searchCategory.systemImage)
            Text(searchCategory.title)
        }
        .padding()
        .frame(width: 100, height: 100)
        .foregroundColor(.white)
        .background(ColorConstants.darkBluishGrayColor)
        .cornerRadius(15)
        .shadow(color: ColorConstants.darkGrayColor, radius: 5, x: 2, y: 2)
        .shadow(color: ColorConstants.darkGrayColor, radius: 5, x: -2, y: -2)
    }
}

struct SquareButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
        SquareButton(searchCategory: SearchCategory(title: "Original", systemImage: "star.fill"))
        }
    }
}
