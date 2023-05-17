//
//  Border#2.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 26/10/1444 AH.
//

import SwiftUI

struct Border_2: View {
    let url0 = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png")
    var body: some View {
        NavigationStack {
            VStack{
            HStack {
                AsyncImage(url: url0, scale: 2)
                { image in
                    image.resizable()
                } placeholder: {
                }
                .frame(width: 200, height: 80)
            }
            HStack(){
             
                NavigationLink("Continue"){
                    LogIn()
                }.padding(.all)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.284, green: 0.717, blue: 0.877))//Change Color
                    .cornerRadius(8)
            }.padding(.horizontal)
            
            Text("Log in")
                .font(.headline)
                .foregroundColor(Color(red: 0.284, green: 0.717, blue: 0.877))
        }
        }
        
    }
}

struct Border_2_Previews: PreviewProvider {
    static var previews: some View {
        Border_2()
    }
}
