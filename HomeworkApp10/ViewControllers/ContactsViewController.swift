//
//  PersonInformationViewController.swift
//  HomeworkApp10
//
//  Created by testing on 25.10.2023.
//

import UIKit

final class ContactsViewController: UIViewController {
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
    }
    private func getData() {
        
        for person in people {
            title = person.fullName
            emailLabel.text = person.email
            phoneLabel.text = person.phone
       }
    }
}
