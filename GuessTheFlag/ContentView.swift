//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ken Muyesu on 07/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("7")
                    .padding()
                Text("8")
                    .padding()
                Text("9")
                    .padding()
            }
            HStack {
                Text("4")
                    .padding()
                Text("5")
                    .padding()
                Text("6")
                    .padding()
            }
            HStack {
                Text("1")
                    .padding()
                Text("2")
                    .padding()
                Text("3")
                    .padding()
            }
            HStack {
                Text("0")
                    .padding()
                Text(".")
                    .padding()
                Text("Enter")
                    .padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
