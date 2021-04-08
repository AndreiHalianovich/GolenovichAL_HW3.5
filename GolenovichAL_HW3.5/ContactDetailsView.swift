//
//  ContactDetailsView.swift
//  GolenovichAL_HW3.5
//
//  Created by Andrei Halianovich on 8.04.21.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            Form {
                HStack{
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
                
                RowDetailsView(imageName: "phone", content: person.phoneNumber)
                RowDetailsView(imageName: "at", content: person.email)
            }
        }
        .navigationBarTitle(person.fullName)
    }
    
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person(name: "Vasya", surname: "Pupkin", email: "vpupkin@gmail.com", phoneNumber: "(491) 624-911"))
    }
}
