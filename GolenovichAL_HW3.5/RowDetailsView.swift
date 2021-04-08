//
//  RowDetails.swift
//  GolenovichAL_HW3.5
//
//  Created by Andrei Halianovich on 8.04.21.
//

import SwiftUI

struct RowDetailsView: View {
    let imageName: String
    let content: String
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(content)
            Spacer()
        }
    }
}

struct RowDetails_Previews: PreviewProvider {
    static var previews: some View {
        RowDetailsView(imageName: "phone", content: "(491) 624-9119")
    }
}
