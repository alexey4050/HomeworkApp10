//
//  Person.swift
//  HomeworkApp10
//
//  Created by testing on 24.10.2023.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
