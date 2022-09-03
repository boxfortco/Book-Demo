//
//  ContentView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: -10) {
                getTabPages()
                getTabIcons(geo: geo)
            }
            
        }.edgesIgnoringSafeArea(.all)
    }

private func getTabPages() -> some View {
    switch tabViewRouter.currentPage {
    case .home:
        return AnyView(HomePage().frame(width: UIScreen.main.bounds.width))
    case .search:
        return AnyView(SearchView())
    
    }
}

private func getTabIcons(geo: GeometryProxy) -> some View {
    let width = geo.size.width / 4
    let height = geo.size.height / 56
    
    return HStack {
        TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .home, width: width, height: height, systemIconName: "house", tabName: "Home")
        
        TabBarIcon(tabViewRouter: tabViewRouter, currentPage: .search, width: width, height: height, systemIconName: "magnifyingglass", tabName: "Search")
        
    }
    .frame (width:geo.size.width, height: 60)
    .padding(.bottom, 20)
    .background(ColorConstants.darkBluishGrayColor.shadow(radius: 2))
}

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabViewRouter: TabViewRouter())
    }
}
