
//
//  FirstPage.swift
//  day3
//
//  Created by hoton on 01/04/1444 AH.
//

import SwiftUI



struct AddToOurNews: View {
    
    @State var message :String = ""
    @State var Name :String = "hoton"
    @State var Gender :String = "FemaleProfile"
    
  //  @State private var showsheet = false
    @Binding var isPresentedSheet : Bool
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                TextField("share with us your thoughts and news...", text: $message)
                    .frame(height: 300 )
                    .background(Color("LGreen"))
                
                
                
                Button("Post") {
        
                   
                    isPresentedSheet = false
                    OurNews(AddedMessage: $message, AddedName:$Name, AddedGender:$Gender)
                    
                    
                }
                    // Text()
                    .modifier(ButtonModifier())
 
                
                    
               
                }
            .padding()
                 
                        
                }}
        }
    

    

struct AddToOurNewsPreviews: PreviewProvider {
    static var previews: some View {
        AddToOurNews(isPresentedSheet: Binding<Bool>.constant(false))
    }
}
