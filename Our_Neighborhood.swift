////
////  SecondPage.swift
////  Example
////
////  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
////
//
//import SwiftUI
//
//struct SecondPage: View {
//    var body: some View {
//
//        NavigationView {
//            VStack{
//                Text("Neighborhood Services")
//                    .font(.title)
//                    .foregroundColor(Color("Ggreen"))
//                ScrollView(.horizontal)
//                {
//                    HStack {
//                        NavigationLink(destination:Markets()) {
//
//                        VStack{
//                         Image(systemName: "basket")
//                         .font(.system(size:20))
//                         Text("Splaies")
//
//                        }
//                                .font(.caption)
//                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                                .padding()
//                                .foregroundColor(Color.black)
//                                .background(Color("LGreen"))
//                                .cornerRadius(26)
//
//                        }
//
//
//
//
//
//                        NavigationLink(destination:Pharmacy()) {
//                          VStack{
//                                Image(systemName: "cross")
//                                .font(.system(size:20))
//                                Text("Pharmacies")
//                                }
//                                .font(.caption)
//                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                                .padding()
//                                .foregroundColor(Color.black)
//                                .background(Color("LGreen"))
//                                .cornerRadius(26)
//                        }
//
//
//
//                        NavigationLink(destination:Barber()) {
//                                VStack{
//                                        Image(systemName: "mustache")
//                                        .font(.system(size:20))
//                                        Text("Barber")
//                                      }
//
//                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                                .padding()
//                                .font(.caption)
//                                .foregroundColor(Color.black)
//                                .background(Color("LGreen"))
//                                .cornerRadius(26)
//                        }
//
//
//
//                        NavigationLink(destination:Washbasins()) {
//                               VStack{
//                                     Image(systemName: "washer")
//                                     .font(.system(size:20))
//                                     Text("washbasins")
//                               }
//                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                                .font(.caption)
//                                .padding()
//                                .foregroundColor(Color.black)
//                                .background(Color("LGreen"))
//                                .cornerRadius(26)
//
//                        }
//
//                        .navigationTitle(" Take a roll in the lane:")
//
//                        .toolbar {
//                            Button(action: {})
//                            {
//                                Text("Yasmine neigborhood")
//                                Image(systemName: "mappin")
//                            }
//                            .foregroundColor(Color("Dgreen"))
//                        }
//                    }
//                }
//                .padding()
//                Divider()
//                .padding()
//
//
//                Text("Neighbors'Services")
//                    .font(.title)
//                    .foregroundColor(Color("Ggreen"))
//                    .multilineTextAlignment(.leading)
//                    .padding()
//
//
//                ScrollView(.horizontal)
//                {
//                 HStack {
//                        NavigationLink(destination:SharedTransportation()) {
//                        VStack{
//
//                              Image(systemName: "car.2")
//                              .font(.system(size:20))
//                              Text("Shared Transportation")
//
//                           }
//                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                          .font(.caption)
//                          .padding()
//                          .foregroundColor(Color.black)
//                          .background(Color("LGreen"))
//                          .cornerRadius(26)
//                           }
//
//
//                           NavigationLink(destination:KidsGathring()) {
//                           VStack{
//                                 Image(systemName: "teddybear")
//                                 .font(.system(size:20))
//                                  Text("Kids Gathring")
//
//                           }
//                            .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                            .font(.caption)
//                            .padding()
//                            .foregroundColor(Color.black)
//                            .background(Color("LGreen"))
//                            .cornerRadius(26)
//
//                           }
//
//
//                          NavigationLink(destination:CarWash()){
//                          VStack{
//                                Image(systemName: "bubbles.and.sparkles")
//                                .font(.system(size:20))
//                                Text("Car Wash")
//
//                          }
//
//                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                          .font(.caption)
//                          .padding()
//                          .foregroundColor(Color.black)
//                          .background(Color("LGreen"))
//                          .cornerRadius(26)
//
//                          }
//                           Text("------")
//                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
//                          .font(.caption)
//                          .padding()
//                          .foregroundColor(Color.black)
//                          .background(Color("LGreen"))
//                          .cornerRadius(26)
//
//                 }}
//                .padding()
//            }
//        }
//    }
//}
//struct SecondPage_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondPage()
//    }
//}



//
//  SecondPage.swift
//  Example
//
//  Created by Ghada Amer Alshahrani on 04/04/1444 AH.
//

import SwiftUI



struct Our_Neighborhood: View {

                                           
       init() {
                                       
        let navBarAppearance = UINavigationBarAppearance()
                                                      
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.init(named: "Dgreen") as Any]
         
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
            UINavigationBar.appearance().compactAppearance = navBarAppearance

 } //init to change the appearance of the nav
                                                  
                                                  
     
                                                  
    var body: some View {
        
                                                      
                                                      
        NavigationView {
            VStack{
                                                              
                Text("Neighborhood Services")
                 //   .font(.title)
                    .font(.system(size: 28,weight: .bold))
                    .foregroundColor(Color("Ggreen"))
                   
                ScrollView(.horizontal)
                {
                    HStack {
                        NavigationLink(destination:List_Tamuinat()) {

                        VStack{
                         Image(systemName: "basket")
                         .font(.system(size:20))
                         Text("Splaies")
                                                                          
                        }
                                .font(.caption)
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                            
                        }

                        
                        NavigationLink(destination:List_Pharmacy()) {
                          VStack{
                                Image(systemName: "cross")
                                .font(.system(size:20))
                                Text("Pharmacies")
                                }
                                .font(.caption)
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                        }
                        
                        
                        
                        NavigationLink(destination:List_Barber()) {
                                VStack{
                                        Image(systemName: "mustache")
                                        .font(.system(size:20))
                                        Text("Barber")
                                      }
                                .font(.caption)
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                        }

                        
                        
                        NavigationLink(destination:List_Laundry()) {
                               VStack{
                                     Image(systemName: "washer")
                                     .font(.system(size:20))
                                     Text("Laundry")
                               }
                                .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                                .font(.caption)
                                .padding()
                                .foregroundColor(Color.black)
                                .background(Color("LGreen"))
                                .cornerRadius(26)
                            
                        }

              
                        
                        .toolbar {
                            Button(action: {})
                            {
                                Text("Yasmine neigborhood")
                                Image(systemName: "mappin")
                            }
                            .foregroundColor(Color("Dgreen"))
                            .font(.subheadline)
                        }
                    }
                }
                .padding()
                Divider()
                .padding()
                                                              

                 Text("Neighbors'Services")
                                                              
                .font(.system(size: 28,weight: .bold))
                    .foregroundColor(Color("Ggreen"))
                    .padding()
                    
                
                ScrollView(.horizontal)
                {
                 HStack {
                        NavigationLink(destination:SharedTransportation()) {
                        VStack{
                                                                          
                              Image(systemName: "car.2")
                              .font(.system(size:20))
                              Text("Shared Transportation")
                                                                          
                           }
                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                          .font(.caption)
                          .padding()
                          .foregroundColor(Color.black)
                          .background(Color("LGreen"))
                          .cornerRadius(26)
                           }
                          
                                                                   
                           NavigationLink(destination:KidsClub()) {
                           VStack{
                                 Image(systemName: "teddybear")
                                 .font(.system(size:20))
                                  Text("Kids Gathring")
                                                                             
                           }
                            .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                            .font(.caption)
                            .padding()
                            .foregroundColor(Color.black)
                            .background(Color("LGreen"))
                            .cornerRadius(26)
                                                                             
                           }
                                                  
                          NavigationLink(destination:CarWash()){
                          VStack{
                                Image(systemName: "bubbles.and.sparkles")
                                .font(.system(size:20))
                                Text("Car Wash")
                                                                            
                          }
                          
                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                          .font(.caption)
                          .padding()
                          .foregroundColor(Color.black)
                          .background(Color("LGreen"))
                          .cornerRadius(26)
                                                                            
                          }
                                                                   
                                                                   
                           Text("------")
                          .frame(minWidth:70, maxWidth: 80 , minHeight:70, maxHeight:80)
                          .font(.caption)
                          .padding()
                          .foregroundColor(Color.black)
                          .background(Color("LGreen"))
                          .cornerRadius(26)
                                                                   
                 }}
                .padding()
            }
                                                          
            .navigationTitle(" Take a roll in the lane")
        }
    }
}
struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
          Our_Neighborhood()
    }
}
