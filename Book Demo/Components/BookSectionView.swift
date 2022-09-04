//
//  BookSectionView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct BookSectionView: View {
    
    var bookSection: BookSection
    @State private var selectedBook: Book?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(bookSection.sectionName)
                .font(.title3)
                .bold()
                .foregroundColor(.gray)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(bookSection.books) {book in
                        Button(action: {
                            self.selectedBook = book
                        }) {
                            Image(book.posterImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                                .frame(width: 150)
                        }
                        .sheet(item: self.$selectedBook) { book in
                            BookDetailView(book: book)
                        }
                    }
                }
            }
            
        }.padding()
    }
}

struct BookSectionView_Previews: PreviewProvider {
    static var previews: some View {
        BookSectionView(bookSection: BookSection.recommended)
    }
}
