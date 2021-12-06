//
//  Model.swift
//  TableSwiftUI
//
//  Created by Кристина Максимова on 05.12.2021.
//

import Foundation

class Model {
    private(set) var books: [Book] = []
    
    func decodeBook() -> [Book] {
        BookDecoder().decodeLocalFile()
    }
    
    func decodeBookFromNet(_ completion: @escaping ([Book]) -> Void) {
        BookDecoder().decodeNetFile { books in
            completion(books)
        }
    }
}
