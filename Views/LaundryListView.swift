//
//  LaundryListView.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct LaundryListView: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    
    var body: some View {
        VStack {
            
            List(localSearchService.landmarks) { landmark in
                VStack(alignment: .leading) {
                    
                    
                    Label(landmark.name,systemImage: "washer")
                    
                    //     .bold()
                        .accentColor(Color("Ggreen"))
                        .font(.system(size: 20))
                    //   Divider()
                    
                    
                    
                    
                    Text(landmark.title)
                        .opacity(0.5)
                    
                }
            }
        }
    }
    
}
struct LaundryListView_Previews: PreviewProvider {
    static var previews: some View {
        LaundryListView().environmentObject(LocalSearchService())
    }
}
