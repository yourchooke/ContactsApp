//
//  MainTabBarViewController.swift
//  ContactsApp
//
//  Created by Olga Yurchuk on 21.07.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    var contactList = Contact.getContacts()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        for viewControllers in self.viewControllers! {
            
        }
    }

}
