//
//  BookDetailView.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedBook: Book?
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        Image(book.promoImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        Button(action: { presentationMode.wrappedValue.dismiss() }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.white.opacity(0.8))
                        }
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                    }
                    
                    Text(book.title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                   
                    
                    actionButtons
                        .padding()
                    
                    /*
                    ratingsDetail
                     
                    extraDetail
                     */
                    
                    bookDetails
                }
            }
        }
    }
    
    private var actionButtons: some View {
        HStack {
            Button(action: {
                selectedBook = book
            }) {
                HStack {
                    Image(systemName: "book")
                    Text("READ")
                }
                .foregroundColor(.black)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(RoundedRectangle(cornerRadius: 2).fill(Color.white))
            }
            .sheet(item: $selectedBook) { book in
                BookView(book: book)
            }
            /*
            Group {
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.white)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.down.circle")
                        .foregroundColor(.white)
                }
                
                Button(action: {}) {
                    Image(systemName: "person.2.circle")
                        .foregroundColor(.white)
                }
                
                Button(action: {}) {
                    Image(systemName: "arrow.up.circle")
                        .foregroundColor(.white)
                }
            }.font(.title)
             */
        }
    }
    
    /*
    private var ratingsDetail: some View {
        HStack {
            Text("PG-13")
                .font(.body)
                .bold()
                .padding(5)
                .background(RoundedRectangle(cornerRadius: 2).stroke(Color.white))
            
            Text("2016")
            
            Circle()
                .frame(width: 5, height: 5)
            
            Text("2h 30m")
            
            Circle()
                .frame(width: 5, height: 5)
            
            Text("Science Fiction, Super Hero, Action")
        }
        .font(.caption)
        .foregroundColor(.white)
        .padding(.horizontal)
    }
     */
    
    /*
    private var extraDetail: some View {
        HStack {
            Text("HD")
            
            Circle()
                .frame(width: 5, height: 5)
            
            HStack(spacing: 0) {
                Image(systemName: "film")
                Text("VISION")
            }
            
            Circle()
                .frame(width: 5, height: 5)
            
            Text("5.1")
        }
        .font(.caption)
        .foregroundColor(.white)
        .padding(.horizontal)
    }
    */
     
    private var bookDetails: some View {
        Text(book.details)
            .foregroundColor(.white)
            .padding()
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book.promos[0])
    }
}

