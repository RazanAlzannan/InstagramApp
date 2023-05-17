//
//  Search.swift
//  InsagramApp
//
//  Created by Razan Mohammed Alzannan on 27/10/1444 AH.
//

import SwiftUI

struct Search: View {
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Image(systemName: "magnifyingglass").padding(.leading, 50.0).foregroundColor(.gray)
                    Spacer()
                    Text("Search for a person").foregroundColor(Color.gray).padding(.trailing, 80.0).font(.headline)
                    
                }.frame(maxWidth: .infinity)
                    .overlay( RoundedRectangle(cornerRadius: 16)
                        .fill(Color(hue: 1.0, saturation: 0.039, brightness: 0.543, opacity: 0.128))
                        .frame(width: .infinity, height: 40)
                        .padding(.all))
                Text("Cancel")
                    .padding(.trailing)
            }
            .padding(.bottom, 20.0)
            
            HStack{
                AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),scale: 2)
                { image in
                    image.resizable()
                } placeholder: {
                    
                }
                .frame(width: 90, height: 69).clipShape(RoundedRectangle(cornerRadius: 50))
                
                Text("Mustafa Ahmad")
                Spacer()
                
            }
            .padding(.leading, 20.0)
        }
        .padding(.bottom, 560.0)
        
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
