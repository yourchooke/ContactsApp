//
//  ExpandedContactListViewController.swift
//  ContactsApp
//
//  Created by Olga Yurchuk on 21.07.2022.
//

import UIKit

class ExpandedContactListViewController: UITableViewController {
    
    var contactList: [Contact]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contactList[section]
        return contact.name + " " + contact.surname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandedContactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.section]
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = "Phone number: " + contact.phoneNumber
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = "Email: " + contact.email
        }
            
        cell.contentConfiguration = content
        
        return cell
    }


}
