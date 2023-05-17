//
//  ChangeUsername.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 26/10/1444 AH.
//

import SwiftUI

struct ChangeUsername: View {
    var body: some View {
        NavigationStack { VStack{
            
            VStack {
                Text("Change username")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 10)
                
                Text("Add a username. \nYou can change this any time!")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
            }.padding(.bottom,50)
            HStack{
                Text("@Razan013").foregroundColor(Color.gray).padding(.leading, 40).font(.headline)
                Spacer()
                Image(systemName: "checkmark.circle").padding(.trailing,40).foregroundColor(.green)
            }.frame(maxWidth: .infinity)
                .overlay( RoundedRectangle(cornerRadius: 16)
                    .fill(Color(hue: 1.0, saturation: 0.039, brightness: 0.543, opacity: 0.128))
                    .frame(width: .infinity, height: 64)
                    .padding(.all))
            VStack{
                Spacer()
                    .frame(height: 50)
            }
            HStack(){
                NavigationLink("Next"){
                    ProfilePage()
                }.padding(.all)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.284, green: 0.717, blue: 0.877))//Change Color
                    .cornerRadius(8)
            }.padding(.horizontal)
            Text("By signing up you agree to our Terms")
                .font(.callout)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
        }.padding(.bottom, 250)
    }
}
}

struct ChangeUsername_Previews: PreviewProvider {
    static var previews: some View {
        ChangeUsername()
    }
}
