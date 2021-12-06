//
//  BookModel.swift
//  TableSwiftUI
//
//  Created by Кристина Максимова on 04.12.2021.
//

import Foundation

struct Library: Codable {
    let items: [BookItem]
    
    enum CodingKeys: String, CodingKey {
        case items = "features"
    }
}

struct BookItem: Codable {
    let book: Book
    
    enum CodingKeys: String, CodingKey {
        case book = "properties"
    }
}

enum BookType {
    case electronic, audio, pdf, unknown
}

enum AgeLimit {
    case zero, six, twelve, sixteen, eighteen, unknown
}

struct Book: Codable, Identifiable, Equatable {
    var id: Int
    var title: String
    var typeDesc: String
    var author: String?
    var authorFullName: String?
    var ageLimitDesc: Int
    var admissionDate: String
    var admissionPrice: Double
    var numberOfProvided: Int
    var inventoryNumber: Double
    var expirationDate: String?
    var genre: String
    
    var type: BookType {
        switch typeDesc {
        case "Электронный текст":
            return .electronic
        case "Аудиокнига":
            return .audio
        case "PDF-книга":
            return .pdf
        default:
            return .unknown
        }
    }
    var ageLimit: AgeLimit {
        switch ageLimitDesc{
        case 0:
            return .zero
        case 6:
            return .six
        case 12:
            return .twelve
        case 16:
            return .sixteen
        case 18:
            return .eighteen
        default:
            return .unknown
        }
    }

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case title = "Название"
        case typeDesc = "Тип"
        case author = "Автор"
        case authorFullName = "Автор (ФИО)"
        case ageLimitDesc = "Возрастное ограничение на книгу"
        case admissionDate = "Дата поступления"
        case admissionPrice = "Цена поступления"
        case numberOfProvided = "Кол-во выдач"
        case inventoryNumber = "Инвентарный номер"
        case expirationDate = "Выдана до"
        case genre = "Жанр книги"
    }
}

extension BookType {
    var imageBookTypeName: String {
        switch self {
        case .electronic:
            return "book.closed.fill"
        case .audio:
            return "headphones.circle.fill"
        case .pdf:
            return "doc.circle"
        case .unknown:
            return "camera.metering.unknown"
        }
    }
}

extension AgeLimit {
    var imageAgeLimit: String {
        switch self {
        case .zero:
            return "0.circle.fill"
        case .six:
            return "6.circle.fill"
        case .twelve:
            return "12.circle.fill"
        case .sixteen:
            return "16.circle.fill"
        case .eighteen:
            return "18.circle.fill"
        case .unknown:
            return "camera.metering.unknown"
        }
    }
}
