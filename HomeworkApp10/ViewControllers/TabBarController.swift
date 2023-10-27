//
//  TabBarControllerViewController.swift
//  HomeworkApp10
//
//  Created by testing on 25.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var person: Person!
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        transferData()
    }
    
    private func transferData() {
        viewControllers?.forEach {
            if let navigationController = $0 as? UINavigationController,
               let topViewController = navigationController.topViewController {
                
                switch topViewController {
                case let personListViewController as PersonListViewController:
                    personListViewController.person = person
                    
                case let infoListViewController as InfoListViewController:
                    infoListViewController.person = person
                    
                default:
                    break
                }
            }
        }
    }
}
