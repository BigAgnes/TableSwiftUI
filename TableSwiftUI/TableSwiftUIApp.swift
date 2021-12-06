//
//  TableSwiftUIApp.swift
//  TableSwiftUI
//
//  Created by Кристина Максимова on 04.12.2021.
//

import SwiftUI

@main
struct TableSwiftUIApp: App {
    var books = BookViewModel()

    
    var body: some Scene {
        WindowGroup {
            ContentView(books: books)
        }
    }
}
