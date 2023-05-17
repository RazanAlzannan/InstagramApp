//
//  PhoneNumber.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 27/10/1444 AH.
//

import SwiftUI

struct PhoneNumber: View {
    var body: some View {
        NavigationStack { VStack {
            
            Text("Enter phone number or email adress")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
                .padding(.top,70)
            ///
            HStack{
                Text("Phone")
                    .font(.title)
                    .padding()
                Text("Email")
                    .font(.title)
                    .padding()
            }
            
            Divider()
                .padding(.bottom,32)
            
            
            HStack{
                Text("+966").foregroundColor(Color.blue).padding(.leading, 40).font(.headline)
                Spacer()
                Divider()
                    .foregroundColor(.black).frame(height: 40).padding(.trailing)
                //
                Text("542 99119").foregroundColor(Color.gray)
                    .font(.headline)
                    .padding(.trailing,150)
                
            }.frame(maxWidth: .infinity)
                .overlay( RoundedRectangle(cornerRadius: 16)
                    .fill(Color(hue: 1.0, saturation: 0.039, brightness: 0.543, opacity: 0.128))
                    .frame(width: .infinity, height: 64)
                ).padding()
            
            VStack{
                Spacer()
                    .frame(height: 20)
            }
            
            HStack(){
                NavigationLink("Next"){
                    ChangeUsername()
                }.padding(.all)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.284, green: 0.717, blue: 0.877))//Change Color
                    .cornerRadius(8)
                
            }.padding(.horizontal)
            
            Text("You may recive SMS notification")
                .foregroundColor(Color.gray)
            
            Spacer()
        }.padding(.bottom,40)
        
        
    }}
}

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
