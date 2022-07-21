//
//  MainTabBarViewController.swift
//  ContactsApp
//
//  Created by Olga Yurchuk on 21.07.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    var contactList = Contact.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendContacts()
    }
    
    private func sendContacts(){
        for viewController in viewControllers! {
            if let navigationVC = viewController as? UINavigationController {
                if let shortListVC = navigationVC.topViewController as? ContactsListViewController {
                    shortListVC.contactList = contactList
                } else if let expandedListVC = navigationVC.topViewController as? ExpandedContactListViewController {
                    expandedListVC.contactList = contactList
                }
            }
        }
    }

}
