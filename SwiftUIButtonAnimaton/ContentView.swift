//
//  ContentView.swift
//  SwiftUIButtonAnimaton
//
//  Created by Ramill Ibragimov on 22.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = "HOME"
    
    var body: some View {
        NavigationView {
            TabView(selection: $showMenu) {
                SecondView()
                    .tabItem {
                        showMenu == "HOME" ? Image(systemName: "house.fill") : Image(systemName: "house")
                    Text("Home")
                }.tag("HOME")
                
                ThirdView()
                    .tabItem {
                        Image(systemName: "rectangle.stack")
                        Text("Setting")
                }.tag("SETTINGS")
            }.navigationBarTitle(Text(self.showMenu), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
