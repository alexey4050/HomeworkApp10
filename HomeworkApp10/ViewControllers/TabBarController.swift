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
        guard let viewControllers = viewControllers else { return }
        viewControllers.forEach {
            if let navigationListVC = $0 as? UINavigationController {
                let personListVC = navigationListVC.topViewController
                guard let personListVC = personListVC as? PersonListViewController else  { return
                }
                personListVC.person = person
            } else if let navigationInfoVC = $0 as? UINavigationController {
                let infoListVC = navigationInfoVC.topViewController
                guard let infoListVC = infoListVC as? InfoListViewController else { return
                }
                infoListVC.person = person
            }
        }
    }
    
}

