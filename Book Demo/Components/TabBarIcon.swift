//
//  TabBarIcon.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct TabBarIcon: View {
    @StateObject var tabViewRouter: TabViewRouter
    
    let currentPage: Page
    let width: CGFloat
    let height: CGFloat
    let systemIconName: String
    let tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            
            Text(tabName)
                .font(.footnote)
        }
        .foregroundColor(tabViewRouter.currentPage == currentPage ? .white : .gray)
        .padding(.horizontal, -4)
        .onTapGesture {
            tabViewRouter.currentPage = currentPage
        }
    }
    
    
}
