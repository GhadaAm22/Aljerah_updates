//
//  Login.swift
//  test
//
//  Created by Omnya Kamal  on 03/11/2022.
//

import SwiftUI
import AuthenticationServices
struct Login: View {

    @State var page_title: String = ""
    @State var user_name: String = ""
    @State var email: String = ""
    @State var password : String = ""
    @State var phoneNum: String = ""
    

    var body: some View {
        
        NavigationView() {
            
            VStack{
                
                //Logo picture inside a Stack
                
                
                // VStack{
                
                Image("myLogo")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                
                // }
                
                
                //User Information inside a Stack
                
                VStack(alignment:.leading){
                    
                    
                    //Email
                    Text("email")
                        .modifier(HeaderModifier())
                    
                    TextField("", text: $email)
                        .modifier(TextFieldModifier())
                    
                    //Pasword
                    Text("Password")
                        .modifier((HeaderModifier()))
                    
                    TextField("", text: $password)
                        .modifier((TextFieldModifier()))
                    
                }
                .padding()
                
                
                
                
                Button {
                    print("Button was tapped")
                    print(user_name)
                    print(email)
                    print(phoneNum)
                    
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("Dgreen"))
                        .cornerRadius(8.0)
                        .padding()
                }
                
                HStack{
                Text("Don't have an account? ")
                    NavigationLink(destination:Registration()){
                        Text("REGISTER")
                        .foregroundColor(.blue).underline()}
                    
//                        .onTapGesture {
//                            UIApplication.shared.open(URL(string: oneGrocery.groceryLocation)!, options: [:])
//                        }
                }
//                Text("OR")
//                SignInWithAppleButton(
//                    onRequest: { request in
//
//                    },
//                    onCompletion: { result in
//
//                    }
//                )
//                   .padding()
//                   .frame(width: 390, height: 85)
            }
            
            
            .navigationTitle("Login")
        }
        
    }
       
    
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
