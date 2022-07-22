//
//  ContactsListViewController.swift
//  ContactsApp
//
//  Created by Olga Yurchuk on 18.07.2022.
//

import UIKit

class ShortContactsListViewController: UITableViewController {
    
    var contactList: [Contact]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shortContactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        content.text = contact.name + " " + contact.surname
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          guard let detailsVC = segue.destination as? DetailsViewController else {return}
          
          guard let indexPath = tableView.indexPathForSelectedRow else { return }
          let contact = contactList[indexPath.row]
          detailsVC.currentContact = contact
          
    }


}
