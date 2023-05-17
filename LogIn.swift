//
//  LogIn.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 27/10/1444 AH.
//

import SwiftUI
let url0 = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png")
struct LogIn: View {
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    AsyncImage(url: url0, scale: 2)
                    { image in
                        image.resizable()
                    } placeholder: {
                    }
                    .frame(width: 200, height: 80)
                }.padding(15)
            }
            VStack{
                HStack{
                    Text("Username").foregroundColor(.gray).padding(.leading, 40).font(.headline)
                    Spacer()
                }.padding(.horizontal, 8.0).frame(maxWidth: .infinity)
            }
            Divider()
            VStack{
                HStack{
                    Text("Password").foregroundColor(.gray).padding(.leading, 40).font(.headline)
                    Spacer()
                }.padding(.horizontal, 8.0).frame(maxWidth: .infinity)
                
            }

                                HStack(){
                        NavigationLink("Continue"){
                            Onboarding()
                        }.padding(.all)
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.284, green: 0.717, blue: 0.877))//Change Color
                            .cornerRadius(8)
                    }.padding(.horizontal,16)
                
                
            }
        }
    
        
        struct LogIn_Previews: PreviewProvider {
            static var previews: some View {
                LogIn()
            }
        }
    }
