//
//  DetailsView.swift
//  TableSwiftUI
//
//  Created by Кристина Максимова on 06.12.2021.
//

import SwiftUI

struct DetailsView: View {
    let book: Book
    
    var body: some View {
        
        Image("bookImg").resizable().padding(.vertical, 12.0).frame(width: UIScreen.main.bounds.size.height * 0.3, height: UIScreen.main.bounds.size.height * 0.3 )
            
            HStack (alignment: .center) {
            Image(systemName: book.type.imageBookTypeName)
                    .foregroundColor(Color.blue)
                    .padding(.trailing, 12.0)
            Image(systemName: book.ageLimit.imageAgeLimit)
                    .foregroundColor(Color.blue)
            }
        VStack (alignment: .leading) {
            Text("Название: \(book.title)")
            Text("Автор: \(book.authorFullName ?? "")")
            Text("Дата поступления: \(book.admissionDate)")
            Text("Выдана до: \(book.expirationDate ?? "")")
            Spacer()
        }
        .padding(.top, 12.0)
        Text("\(book.admissionPrice, specifier: "%.2f")")
            .font(.title)
            .foregroundColor(Color.gray)
            .multilineTextAlignment(.center)
            .padding(.bottom, 12.0)
    }
}
