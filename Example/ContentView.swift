//
//  ContentView.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            Our_Neighborhood()
            .tabItem{
                Label("Our neighborhood", systemImage: "house")

            }
            .toolbar(.visible, for: .tabBar)

            .toolbarBackground(Color("Lgreen"),for: .tabBar)
            
            
            OurNows()
            .tabItem{
                Label("Our Nows", systemImage: "bubble.middle.bottom")
            }
            .toolbar(.visible, for: .tabBar)

            .toolbarBackground(Color("Lgreen"),for: .tabBar)
            
             MyAccount()
            
            .tabItem{
                Label("My Account", systemImage: "person.circle")
            }
            .toolbar(.visible, for: .tabBar)

            .toolbarBackground(Color("Lgreen"),for: .tabBar)
        }
        
        
        .accentColor(Color("Ggreen"))
//        .padding()

    }
    

}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
