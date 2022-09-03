//
//  SearchView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @State private var selectedBook: Book?
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack(alignment: .leading, spacing: 20) {
                searchView
                ScrollView(showsIndicators: false) {
                    exploreText
                    categoryButtons
                    books
                }
            }.padding()
            .padding(.top, 50)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private var searchView: some View {
        VStack {
            ZStack(alignment: .leading) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search by title, character or genre", text: $searchText)
                    .foregroundColor(.gray)
                    .padding(.leading, 20)
            }
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
        }
    }
    
    private var exploreText: some View {
        HStack {
            Text("Explore")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Spacer()
        }
    }
    
    private var searchCategories = [
        SearchCategory(title: "Originals", systemImage: "star.fill"),
        SearchCategory(title: "Books", systemImage: "film"),
        SearchCategory(title: "Series", systemImage: "personalhotspot")
    ]
    
    private var categoryButtons: some View {
        HStack (spacing: 30) {
            ForEach(searchCategories) { category in
                SquareButton(searchCategory: category)
            }
        }
    }
    
    private var books: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))]) {
            ForEach(getFilteredBooks()) { book in
                ZStack {
                    Button(action: {
                        self.selectedBook = book
                    }) {
                        Image(book.posterImage)
                            .resizable()
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .sheet(item: $selectedBook) { book in
                        BookDetailView(book: book)
                    }
                }
                
            }
        }
    }
    
    private func getFilteredBooks() -> [Book] {
        if searchText.isEmpty {
            return BookSection.sampleBooks
        } else {
            return BookSection.sampleBooks.filter {
                $0.title.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

