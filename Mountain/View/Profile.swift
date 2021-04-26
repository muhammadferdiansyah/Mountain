//
//  Profile.swift
//  Mountain
//
//  Created by Dandy Ferdiansyah on 09/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            Image("logo.gunung")
                .resizable()
                .frame(width: 170, height: 170)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text("Muhammad Dandy Ferdiansyah").font(.system(size: 24)).padding(.top, 16)
            Text("dandyferdiansyah2801@gmail.com").font(.body).padding(.top, 16)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
