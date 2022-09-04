//
//  HomePage.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct HomePage: View {
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            ScrollView {
                VStack {
                     LogoHeaderView()
                        .frame(maxWidth: 50)
                        .padding(.top, 40)
                    
                    CarouselView()
                    ChannelView()
                        .frame(width: UIScreen.main.bounds.width)
                    
                    ForEach(BookSection.bookSections) { section in
                        BookSectionView(bookSection: section)
                            .frame(width: UIScreen.main.bounds.width)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
