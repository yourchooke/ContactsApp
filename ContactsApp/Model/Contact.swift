//
//  Contact.swift
//  ContactsApp
//
//  Created by Olga Yurchuk on 19.07.2022.
//

struct Contact {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func getContacts() -> [Contact] {
        
        var dataArrays = DataManager()
        var countNames = dataArrays.names.count
        var contacts : [Contact] = []
        
        dataArrays.names.shuffle()
        
        for name in dataArrays.names {
            let contact = Contact(name: name,
                    surname: dataArrays.surnames.remove(at: Int.random(in: 0..<countNames)),
                    phoneNumber: dataArrays.phoneNumbers.remove(at: Int.random(in: 0..<countNames)),
                    email: dataArrays.emails.remove(at: Int.random(in: 0..<countNames)))
            countNames -= 1
            contacts += [contact]
        }
        
        return contacts
    }
}
