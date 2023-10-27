//
//  ContactsListViewController.swift
//  HomeworkApp10
//
//  Created by testing on 24.10.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    private let dataStore = DataStore()
    var person: Person!
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Persons List"
        people = dataStore.generateRandomPeople()
    }

// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            guard let contactsVC = segue.destination as? ContactsViewController else {
                return }
            contactsVC.person = sender as? Person
        }
    }
}

// MARK: - TableViewDataSource
extension PersonListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        let person = people[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
}

// MARK: - TableViewDataSource
extension PersonListViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = people[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
}
