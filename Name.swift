//
//  Name.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 26/10/1444 AH.
//

import SwiftUI

struct Name: View {
    var body: some View {
        NavigationStack{ VStack{
            
            VStack {
                Text("Add your name")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 10)
                
                Text("Add your name so that friends can find you.")
                    .font(.headline)
                    .foregroundColor(.gray)
                
            }.padding(.bottom,50)
            HStack{
                Text("Razan Mohammed").foregroundColor(Color.gray).padding(.leading, 40).font(.headline)
                Spacer()
                Image(systemName: "x.circle.fill").padding(.trailing,40).foregroundColor(.gray)
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
                    Password()
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

struct Name_Previews: PreviewProvider {
    static var previews: some View {
        Name()
    }
}
