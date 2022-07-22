//
//  ViewController.swift
//  ContactsApp
//
//  Created by Olga Yurchuk on 18.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var currentContact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = currentContact.name + " " + currentContact.surname
        phoneNumberLabel.text = "Phone number: " + currentContact.phoneNumber
        emailLabel.text = "Email: " + currentContact.email
    }

    

}

