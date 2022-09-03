//
//  BookView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/3/22.
//

import SwiftUI

struct BookView: View {
    
    var book: Book
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedBook: Book?
 
    var body: some View {
        
        GeometryReader { geo in
            
            GradientBackgroundView()
            
            VStack(alignment: .trailing, spacing: 0) {
                
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.white.opacity(0.8))
                }
                .padding(.top, 10)
                .padding(.trailing, 10)
                
                
                TabView {
                    ForEach (book.pages, id:\.self) { p in
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
            }
            
            /*.background(Color.black
                /*
                Image(book.pages[0])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .blur(radius: 40)
                    .ignoresSafeArea()
                 */
            )*/
        }
        
        
    }
}
struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book.promos[0])
    }
}
