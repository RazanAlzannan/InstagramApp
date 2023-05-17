//
//  Password.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 26/10/1444 AH.
//

import SwiftUI

struct Password: View {
    var body: some View {
        NavigationStack { VStack{
            
            VStack {
                Text("Create a passord")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 10)
                
                Text("We can remeber the password,you wont need to enter it on your iCloud devices.")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                
            }.padding(.bottom,40)
            
            HStack{
                Text("Password").foregroundColor(Color.gray).padding(.leading, 40).font(.headline)
                Spacer()
            }.frame(maxWidth: .infinity)
                .overlay( RoundedRectangle(cornerRadius: 16)
                    .fill(Color(hue: 1.0, saturation: 0.039, brightness: 0.543, opacity: 0.128))
                    .frame(width: .infinity, height: 64)
                    .padding(.all))
            Spacer()
                .frame(height: 50)
            HStack{
                Image(systemName: "checkmark.square")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(.trailing).foregroundColor(.green)
                
                Text("Save Password").padding(.trailing,170).foregroundColor(Color.gray)
                    .font(.headline)
                
            }
            
            
            VStack{
                Spacer()
                    .frame(height: 20)
            }
            HStack(){
                NavigationLink("Next"){
                    PhoneNumber()
                }.padding(.all)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.284, green: 0.717, blue: 0.877))//Change Color
                    .cornerRadius(8)
            }.padding(.horizontal)
            
        }.padding(.bottom, 250)
        }
    }
}

struct Password_Previews: PreviewProvider {
    static var previews: some View {
        Password()
    }
}
