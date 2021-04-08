//
//  ContentView.swift
//  GolenovichAL_HW3.5
//
//  Created by Andrei Halianovich on 8.04.21.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ContactsWithSectionsView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
