//
//  ContentView.swift
//  TableSwiftUI
//
//  Created by Кристина Максимова on 04.12.2021.
//

import SwiftUI
    
struct ContentView: View {
    @ObservedObject var books: BookViewModel
    @State private var showModal = false
    
    
    var body: some View {
        NavigationView {
            List(books.books) {
                book in
                NavigationLink(destination: DetailsView(book: book)) {
                    VStack {
                        HStack {
                            VStack (alignment: .leading) {
                                Text(String(book.id))
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 8))
                                
                                Text(book.author!)
                                Text(book.title)
                            }
                            Spacer()
                            VStack {
                                Image(systemName: book.type.imageBookTypeName)
                                    .foregroundColor(Color.blue)
                                Spacer()
                                Image(systemName: book.ageLimit.imageAgeLimit)
                                    .foregroundColor(Color.blue)
                            }
                        }
                    }
                }
            }.navigationBarTitle("Library", displayMode: .inline)
        }
    }
}
