
//
//  List_Laundry.swift
//  test
//
//  Created by Omnya Kamal  on 01/11/2022.
//

import SwiftUI

struct List_Laundry: View {
    var body: some View {
        
        VStack(alignment: .leading){
            ScrollView(.vertical) {
                
            Text("No laundries in this neighborhood").font(.system(size: 18))
                    .position(x:180 , y: 300)
            }.padding(.all)
            .navigationTitle("Laundry")
//            .toolbar {
//                Button(action: {})
//                {
//                    Text("Yasmine neigborhood")
//                    Image(systemName: "mappin")
//                }
//                .foregroundColor(Color("Dgreen"))
//                .font(.caption2)
//            }
        }
    }
}


struct List_Laundry_Previews: PreviewProvider {
    static var previews: some View {
        List_Laundry()
    }
}
