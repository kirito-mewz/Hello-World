//
//  PhoneBook.swift
//  Hello World
//
//  Created by PaingHtet on 19/06/2025.
//

import Foundation

struct PhoneBook {
    
    enum Category: String {
        case family = "🏠 Family"
        case friend = "🙋🏻 Friends"
        case work = "💼 Work"
    }
    
    var category: Category
    var contacts: [Contact]
    
    static func fetch() -> [PhoneBook] {
        return [
            .init(category: .family, contacts: [
                .init(name: "Dad", phone: "09111222333"),
                .init(name: "Mom", phone: "09111222333")
            ]),
            .init(category: .friend, contacts: [
                .init(name: "Yuki", phone: "09111222333"),
                .init(name: "Mary", phone: "09111222333"),
                .init(name: "John", phone: "09111222333"),
                .init(name: "David", phone: "09111222333")
            ]),
            .init(category: .work, contacts: [
                .init(name: "Manger", phone: "09111222333"),
                .init(name: "Senior", phone: "09111222333")
            ])
        ]
    }
    
}
