//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ken Muyesu on 07/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //entire screen background
            VStack (spacing: 0){
                Color.red
                Color.blue
            }
            //Color(red: 0.6, green: 0.9, blue: 1)
                //.ignoresSafeArea()
                //.frame(width: 400, height: 400)
                //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
                Text("What a day!")
                    .padding(60)
                    //.foregroundColor(.secondary)
                    .foregroundStyle(.secondary) //vibrancy
                    .background(.ultraThinMaterial) //frosted glass material
        }
        //background for text
        .background(.blue)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
