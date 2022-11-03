//
//  CarWash.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 05/04/1444 AH.
//

import SwiftUI

struct CarWash: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .toolbar {
                Button(action: {})
                {
                    Text("Yasmine neigborhood")
                    Image(systemName: "mappin")
                }
                .foregroundColor(Color("Dgreen"))
                .font(.caption2)
            }
    }
}

struct CarWash_Previews: PreviewProvider {
    static var previews: some View {
        CarWash()
    }
}
