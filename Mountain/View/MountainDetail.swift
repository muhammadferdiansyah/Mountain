//
//  MountainDetail.swift
//  Mountain
//
//  Created by Dandy Ferdiansyah on 09/04/21.
//


import SwiftUI

struct MountainDetail: View {
  var mountain: Mountain
  
  var body: some View {
    ScrollView{
      VStack{
        
        Spacer(minLength: 80)
        Image(mountain.mountPhoto)
          .resizable()
          .scaledToFit()
          .frame(width: 290, height: 200, alignment: .center)
          .clipShape(Circle())
          .shadow(radius: 20)
        Spacer(minLength: 60)
        HStack{
          Text("Nama Gunung: ")
          Spacer()
          Text(mountain.mountName)
            .font(.system(size: 16))
        }
        Spacer(minLength: 20)
        HStack{
          Text("Tinggi Gunung: ")
          Spacer()
          Text(mountain.mountHeight)
            .font(.system(size: 16))
        }
        Spacer(minLength: 20)
        HStack {
          Text("Tipe Gunung: ")
          Spacer()
          Text(mountain.mountType)
            .font(.system(size: 16))
        }
        Spacer(minLength: 20)
        HStack{
          Text("Lokasi Gunung: ")
          Spacer()
          Text(mountain.mountLocation)
            .font(.system(size: 16))
        }
      }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
    }
  }
}

struct MountainDetail_Previews: PreviewProvider {
  static var previews: some View {
    MountainDetail(mountain: mountains[0])
  }
}
