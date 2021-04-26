//
//  ContentView.swift
//  Mountain
//
//  Created by Dandy Ferdiansyah on 09/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView{
        MountainList()
          .tabItem{
            Image(systemName: "house.fill")
            Text("Mountains")
          }
        Profile()
          .tabItem{
            Image(systemName: "person.fill")
            Text("About")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
