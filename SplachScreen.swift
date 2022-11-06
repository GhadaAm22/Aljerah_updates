//
//  ContentView.swift
//  hoton
//
//  Created by hoton on 02/04/1444 AH.
//
import SwiftUI

struct TextModifier1: ViewModifier {
func body(content: Content) -> some View {
content
.foregroundColor(Color("Ggreen"))
.font(.system(size: 26).bold())
.frame(width: 350, height: 40, alignment: .leading)

}
}

struct MenuModifier: ViewModifier {
func body(content: Content) -> some View {
content

      //  .frame(maxWidth: .infinity)
  
        .padding()
        .background(Color("LGreen"))
        .padding(.horizontal)
       

        .foregroundColor(Color.black)
        .font(Font.system(size: 20))
     

}
}

struct ButtonModifier: ViewModifier {
func body(content: Content) -> some View {
content

        .frame(maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(Color("Dgreen"))
        .cornerRadius(8.0)
        .padding()
    
}}
struct SplachScreen: View {

    @State var neighborhood = "Click_to_choose".localized
var id = UUID()
    let neighborhoods:[String] = ["Alyasmin".localized, "Alnarjis".localized,"Alaarid".localized,"Alnada".localized]

@State private var showingAlert = false
@State var isPresented = false


var body: some View {
    
    
    ZStack{
        Image("background")
            .opacity(0.8)
            .ignoresSafeArea()
        
        VStack{
            Image("myLogo")
                .resizable()
                .frame(width: 175, height: 150.0)
                
                
            Text("Choose_your_neighborhood".localized)
                    .modifier(TextModifier1())
                
                
                Menu {
                    ForEach(neighborhoods , id: \.self){ neighbor
                        in
                        Button(action: { neighborhood = neighbor}, label: {Text(neighbor)})
                    }
                }label: {Title:  do {
                    
                    
                    HStack{

                                        Text(neighborhood)
                                        Spacer()
                                        Image(systemName: "chevron.down")
                                    }
                }}.modifier(MenuModifier())
                
                Button {
                    if (neighborhood == "Click_to_choose".localized)
                    {showingAlert = true
                    }
                    else{
                        isPresented.toggle()
                    }
                    
                }label: {
                    Text("Continue")
                        .modifier(ButtonModifier())
                        .fullScreenCover(isPresented: $isPresented, content: {
                            ContentView(neighborhood: $neighborhood)})
                .alert("You_have_to_choose_neighborhood", isPresented: $showingAlert) {
                    Button("Ok", role: .cancel) { }
            
                }
          
                    
                }
                
                
            }
         
                    
                }
                
                
            }
            
            
            
            
            
        }
        
        
    
    
    
    
    

       

struct SplachScreenPreviews: PreviewProvider {
    static var previews: some View {
        SplachScreen()
    }
}
