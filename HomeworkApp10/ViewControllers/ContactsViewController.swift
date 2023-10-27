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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person?.fullName
        emailLabel.text = person?.email
        phoneLabel.text = person?.phone
    }
}
