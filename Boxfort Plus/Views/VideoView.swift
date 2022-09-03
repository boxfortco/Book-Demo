//
//  VideoView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/3/22.
//

import SwiftUI

struct VideoView: View {
    
    var movie: Movie
 
    var body: some View {
        
        GeometryReader { geo in
            
            VStack(alignment: .leading, spacing: 0) {
                
                
                TabView {
                    ForEach (movie.pages, id:\.self) { p in
                        HStack(spacing: 0) {
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .ignoresSafeArea()
                                .padding(.horizontal, 3.0)
                                .frame(height: geo.size.height-20)
                            
                            
                        }
                    }
                    
                }
                
                .tabViewStyle(.page(indexDisplayMode: .never))
                //.indexViewStyle(.page(backgroundDisplayMode: .always))
                

                .ignoresSafeArea()
                //.background(Color.purple)
            }
            //.background(Color.purple)
            
            .background(
                Image(movie.pages[0])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .blur(radius: 40)
                    .ignoresSafeArea()
            )
        }
        
        
    }
}
struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(movie: Movie.promos[0])
    }
}
