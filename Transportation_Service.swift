//
//  FirstPage.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
//

import SwiftUI

struct Transportation_Service: View {
    @State private var showingAlert = false
    @State var Ffild: String = ""
    @State var Sfild: String = ""
    @State var Tfild: String = ""
    var body: some View {
        
        NavigationView {
            VStack()
            {
                
                VStack(alignment: .leading)
                {
                    Text(" Service Topic : ")
                        .font(.system(size: 20 , weight: .bold))
                        .foregroundColor(Color("Ggreen"))
                        .padding()
                    
                    
                    TextField("Delivery from place1 to plase 2", text: $Ffild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                    
                    Text(" Service Details :")
                        .font(.system(size: 20 , weight: .bold))
                        .foregroundColor(Color("Ggreen"))
                        .padding()
                    
                    TextField("Delivery from place1 to plase 2 with the addition of time and any other details.   ",text: $Sfild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                    
                    
                    Text("Ways to communicate:")

                        .foregroundColor(Color("Ggreen"))
                        .font(.system(size: 20 , weight: .bold))
                        .padding()
                    
                    TextField("Phone Number , Email, Social media accounts", text: $Tfild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                        .padding(.bottom)
                    
                    Button("Add Service") {
                        showingAlert = true
                    }
                    .alert("The service has been added", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }
                
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Dgreen"))
                    .cornerRadius(8.0)
                    .padding(.top)
                    
                }
                .padding()
                
                .navigationTitle(" Add a Shared Transportation Service")
                
                    .toolbar {
                    Button(action: {})
                    {
                        Text("Yasmine neigborhood")
                        Image(systemName: "mappin")
                    }
                    .foregroundColor(Color("Dgreen"))
                }
                
                
                
            }
            
        }
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        Transportation_Service()
    }
}
