//
//  Onboarding.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 27/10/1444 AH.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        NavigationStack {
            VStack{
                Image(systemName: "person.crop.circle.fill.badge.checkmark").resizable().frame(width: 150,height: 130).padding(.top,100)
                
                Text("Get a free Profftional Accont")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top,20)
                Text("With a Profftional Accont \nyou can get access to insight about your followers.")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                
                
                HStack{
                    Circle()
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
                    Circle()
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Circle()
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                
                HStack(){
                    NavigationLink("Contintue"){
                        Onbording_2()
                    }.padding(.all)
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.284, green: 0.717, blue: 0.877))//Change Color
                        .cornerRadius(8).padding(.bottom,30)
                    
                }.padding([.leading, .bottom, .trailing])
                
            }
            .padding(.top, 30.0)
            
        }}
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
