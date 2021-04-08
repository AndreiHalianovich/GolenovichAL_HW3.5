//
//  ContactsListVIew.swift
//  GolenovichAL_HW3.5
//
//  Created by Andrei Halianovich on 8.04.21.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink( destination: ContactDetailsView(person: person)){
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactListVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
