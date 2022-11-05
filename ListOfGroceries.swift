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
    @State private var search: String = "coffee"
    
    var body: some View {
       VStack {
            

           Button {
               localSearchService.search(
                               query: search)
           } label: {
               Text("gooo")
           }

            
            if localSearchService.landmarks.isEmpty {
                Text("No placese around you !")
                    .padding()
                    .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray, lineWidth: 2)
                        )
            } else {
                LandmarkListView()
            }
            

            
            Spacer()
        }
    }
}

struct ListOfGroceries_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGroceries().environmentObject(LocalSearchService())
    }
}


