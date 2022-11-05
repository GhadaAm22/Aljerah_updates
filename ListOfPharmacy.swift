//
//  ListOfPharmacy.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct ListOfPharmacy: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = "Pharmacy"

    
    var body: some View {
       VStack {
            

           Button {
               localSearchService.search(
                               query: search)
           } label: {
               Text("View List")
           }

            
            if localSearchService.landmarks.isEmpty {
                Text("No placese around you !")
                    .padding()

                
            } else {
                PharmacyListView()
            }
            

            
          //  Spacer()
        }
    }
}

struct ListOfPharmacy_Previews: PreviewProvider {
    static var previews: some View {
        ListOfPharmacy().environmentObject(LocalSearchService())
    }
}


