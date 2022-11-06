//
//  CarWash_Service.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 09/04/1444 AH.
//

import SwiftUI

struct CarWash_Service: View {
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
                    Text("Service_Topic")
                        .font(.system(size: 20 , weight: .bold))
                        .foregroundColor(Color("Ggreen"))
                        .padding()
                    
                    
                    TextField("Topic_Description_Car", text: $Ffild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                    
                    Text("Service_Details")
                        .font(.system(size: 20 , weight: .bold))
                        .foregroundColor(Color("Ggreen"))
                        .padding()
                    
                    TextField("Details_Description_Car",text: $Sfild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                    
                    
                    Text("Ways_to_communicate")

                        .foregroundColor(Color("Ggreen"))
                        .font(.system(size: 20 , weight: .bold))
                        .padding()
                    
                    TextField("Comm_Description", text: $Tfild)
                        .padding()
                        .foregroundColor(Color.black)
                        .background(Color("LGreen"))
                        .cornerRadius(8.0)
                        .padding(.bottom)
                    
                    Button("Add_Service") {
                        showingAlert = true
                    }
                    .alert("The_service_has_been_added", isPresented: $showingAlert) {
                        Button("Ok", role: .cancel) { }
                    }
                
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Dgreen"))
                    .cornerRadius(8.0)
                    .padding(.top)
                    
                }
                .padding()
                
                .navigationTitle("Add_Car_Wash_Service")
                
                
//                    .toolbar {
//                    Button(action: {})
//                    {
//                        Text("Yasmine neigborhood")
//                        Image(systemName: "mappin")
//                    }
//                    .foregroundColor(Color("Dgreen"))
//                    .font(.caption2)
//                }
                
                
                
            }
            
        }
        
        
    }
}

struct CarWash_Service_Previews: PreviewProvider {
    static var previews: some View {
        CarWash_Service()
    }
}
