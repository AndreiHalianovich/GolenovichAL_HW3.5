//
//  ContactsWithSectionsView.swift
//  GolenovichAL_HW3.5
//
//  Created by Andrei Halianovich on 8.04.21.
//

import SwiftUI

struct ContactsWithSectionsView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName)) {
                        RowDetailsView(imageName: "phone", content: person.phoneNumber)
                        RowDetailsView(imageName: "at", content: person.email)
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactsWithSectionsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsWithSectionsView(persons: Person.getContactList())
    }
}
