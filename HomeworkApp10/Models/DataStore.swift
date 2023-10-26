//
//  DataStore.swift
//  HomeworkApp10
//
//  Created by testing on 24.10.2023.
//

import UIKit

class DataStore {
    static let dataStore = DataStore()
    
    private var firstNames = [
        "Andrey",
        "Alexey",
        "Elena",
        "Dmitriy",
        "Sofia"]
    private var lastNames = [
        "Smith",
        "Prask",
        "Brown",
        "Drozd",
        "Johnson"]
    private var emails = [
        "andrey@example.com",
        "alexey@example.com",
        "elena@example.com",
        "dmitriy@example.com",
        "sofia@example.com"]
    private var phones = [
        "123-456-789",
        "098-765-432",
        "777-777-777",
        "555-555-555",
        "122-344-566"]
}

extension DataStore {
    func generateRandomPeople() -> [Person] {
        var people: [Person] = []
    
        for _ in 0..<firstNames.count {
            let randomFirstName = firstNames.randomElement() ?? ""
            firstNames.removeAll { $0 == randomFirstName }
            
            let randomLastName = lastNames.randomElement() ?? ""
            lastNames.removeAll { $0 == randomLastName }
            
            let randomEmail = emails.randomElement() ?? ""
            emails.removeAll { $0 == randomEmail }
            
            let randomPhone = phones.randomElement() ?? ""
            phones.removeAll { $0 == randomPhone }
            
            let person = Person(firstName: randomFirstName, lastName: randomLastName, email: randomEmail, phone: randomPhone)
            people.append(person)
        }
        return people
    }
}
