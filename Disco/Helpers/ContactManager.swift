//
//  contactHelper.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import Foundation
import Contacts

class ContactManager {
    
    static let shared = ContactManager()
    
    private init() {
        self.requestAccess()
    }

    func requestAccess() {
        let contactStore = CNContactStore()
        let authorizationStatus = CNContactStore.authorizationStatus(for: .contacts)

        if authorizationStatus == .notDetermined {
            contactStore.requestAccess(for: .contacts, completionHandler: { (granted, error) in
                if granted {
                    // The user granted access to their contacts.
                } else {
                    // The user denied access to their contacts.
                }
            })
        } else if authorizationStatus == .authorized {
            // The user already granted access to their contacts.
        } else {
            // The user denied access to their contacts.
        }
    }

    func getContactName(phoneNumber: String) -> String? {
        let contactStore = CNContactStore()
        let phoneNumber = CNPhoneNumber(stringValue: phoneNumber)
        let predicate = CNContact.predicateForContacts(matching: phoneNumber)
        let keysToFetch = [CNContactGivenNameKey, CNContactFamilyNameKey] as [CNKeyDescriptor]
        let contacts = try? contactStore.unifiedContacts(matching: predicate, keysToFetch: keysToFetch)
        
        if let contacts = contacts {
            if contacts.count > 0 {
                return contacts.first?.givenName
            }
        }

        return nil
    }

}
