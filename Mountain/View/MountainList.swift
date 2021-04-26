//
//  MountainList.swift
//  Mountain
//
//  Created by Dandy Ferdiansyah on 09/04/21.
//


import SwiftUI

struct MountainList: View {
  var body: some View {
    NavigationView{
      List(mountains){ mountain in
        NavigationLink(destination: MountainDetail(mountain: mountain)) {
          HStack{
            Image(mountain.mountPhoto)
              .resizable()
              .frame(width: 48, height: 48)
              .clipShape(Circle())
              .overlay(Circle().stroke(Color.black, lineWidth: 2)).padding(.trailing, 16)
            
            VStack(alignment: .leading) {
              Text(mountain.mountName).font(.system(size: 20)).bold()
              Text(mountain.mountLocation).font(.system(size: 15))
            }
          }.padding()
        }
      }.navigationBarTitle(Text("Daftar Gunung"))
    }
  }
}
struct MountainList_Previews: PreviewProvider {
    static var previews: some View {
        MountainList()
    }
}
