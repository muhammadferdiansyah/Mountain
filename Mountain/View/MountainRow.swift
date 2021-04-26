//
//  MountainRow.swift
//  Mountain
//
//  Created by Dandy Ferdiansyah on 09/04/21.
//

import SwiftUI

struct MountainRow: View {
  var mountain: Mountain

  var body: some View {
    HStack{
      Image(mountain.mountPhoto)
      .resizable()
        .aspectRatio(contentMode: .fill)
      .frame(width: 80, height: 80)
        .clipShape(Circle())
      
      VStack(alignment: .leading){
        Text(mountain.mountName)
          .font(.system(size: 20))
          .bold()
          .foregroundColor(.black)
        Text(mountain.mountLocation)
          .font(.system(size: 15))
          .foregroundColor(.black)
        
      }.padding(.leading, 3)
    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 195))
    
  }
}

struct MountainRow_Previews: PreviewProvider {
    static var previews: some View {
      MountainRow(mountain: mountains[1]).previewLayout(.fixed(width: 400, height: 100))
    }
}
