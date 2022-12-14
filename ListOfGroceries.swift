//
//  ListOfGroceries.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import SwiftUI
import MapKit

struct ListOfGroceries: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = "Grocery"
  
    
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
                GroceriesListView()
            }
            

            
          //  Spacer()
        }
    }
}

struct ListOfGroceries_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGroceries().environmentObject(LocalSearchService())
    }
}


