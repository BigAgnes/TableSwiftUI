//
//  BookViewModel.swift
//  TableSwiftUI
//
//  Created by Кристина Максимова on 04.12.2021.
//

import Foundation
import SwiftUI

class BookViewModel: ObservableObject {
    @Published var books: [Book]
    
    init() {
        books = Model().decodeBook()
    }
    
}
