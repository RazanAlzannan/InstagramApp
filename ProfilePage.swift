//
//  ProfilePage.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 26/10/1444 AH.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        NavigationStack{ VStack(alignment: .leading, spacing: 10){
            HStack {
                ProfileImage()
                    .padding()
                Spacer()
                ProfileNumbers()
            }.padding(.horizontal, 20.0)
            
            Text("Mustafa Ahmad")
                .font(.headline)
                .padding(.horizontal, 40)
            Text("Hi I am a good programmer!")
                .font(.headline)
                .padding(.leading, 40)
            
            HStack{
                Button("Follow"){}.frame(maxWidth:  .infinity)
                    .border(.gray)
                Button("Block"){}.frame(maxWidth:  .infinity)
                    .border(.gray)
            }.padding(.horizontal , 15)
            Spacer()
            Divider().padding(.bottom,600)
        }
            NavigationLink("Search"){
                Search()
            }
        }}
}


struct ProfileImage: View {
    var body: some View{
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),scale: 2)
            { image in
                image.resizable()
            } placeholder: {
                
            }
            .frame(width: 90, height: 69).clipShape(RoundedRectangle(cornerRadius: 50))
        }}

struct NumberAndText: View {
    let top: String
    let bot : String
    var body: some View {
        VStack {
            Text(top)
            Text(bot)
        }
    }
}

struct ProfileNumbers:  View {
    var body: some View {
        NumberAndText(top: "1,904", bot:"Post")
         NumberAndText(top: "1,984", bot:"Follwing")
         NumberAndText(top: "3,904", bot:"Follwers")
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
