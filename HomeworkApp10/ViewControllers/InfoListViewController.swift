//
//  InfoListTableViewController.swift
//  HomeworkApp10
//
//  Created by testing on 25.10.2023.
//

import UIKit

class InfoListViewController: UITableViewController {
    
    var person: Person!
    private let dataStore = DataStore()
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
        people = dataStore.generateRandomPeople()
        
    }
}
    
    // MARK: - TableViewDataSource
extension InfoListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = people[section]
        return "\(person.firstName) \(person.lastName)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        let person = people[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "mail")
            content.text = "Email: \(person.email)"
        case 1:
            content.image = UIImage(systemName: "phone")
            content.text = "Phone: \(person.phone)"
        default:
            break
        }
        cell.contentConfiguration = content
        
        return cell
    }
}

//MARK: - UITableViewDelegate
extension InfoListViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
