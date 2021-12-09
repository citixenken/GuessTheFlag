//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ken Muyesu on 07/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    func executeData() {
        print("Here we go...")
    }
    
    @State private var showingAlert = true
    
    var body: some View {
        
        ZStack {
            //entire screen background
            VStack (spacing: 0){
                //Color.red
                //Color.blue
                
                //gradients
                
                //                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                
                //                RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
                
                //            LinearGradient(gradient: Gradient(stops: [
                //                    .init(color: .white, location: 0.30),
                //                    .init(color: .black, location: 0.70),
                //            ]), startPoint: .top, endPoint: .bottom)
                
                //                LinearGradient(gradient: Gradient(stops: [
                //                        Gradient.Stop(color: .white, location: 0.45),
                //                        Gradient.Stop(color: .black, location: 0.55),
                //                    ]), startPoint: .top, endPoint: .bottom)
                
                LinearGradient(gradient: Gradient(colors: [.pink, .black]), startPoint: .top, endPoint: .bottom)
                
            }
            //Color(red: 0.6, green: 0.9, blue: 1)
            //.ignoresSafeArea()
            //.frame(width: 400, height: 400)
            //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            
            VStack {
                Text("What a day!")
                    .padding(60)
                //.foregroundColor(.secondary)
                    .foregroundStyle(.secondary) //vibrancy
                    .background(.ultraThinMaterial) //frosted glass material
                Button("Find out more", role: .destructive, action: executeData)
                Button("Button 1") { }
                        .buttonStyle(.bordered)
                        .tint(.mint)
                Button("Button 2", role: .destructive) { }
                        .buttonStyle(.bordered)
                Button("Button 3") { }
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                Button("Button 4", role: .destructive) { }
                        .buttonStyle(.borderedProminent)
                
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
                
                Button {
                    print("Button was tapped")
                } label: {
                    Text("Tap me!")
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                }
                
                Button {
                    print("Edit button was tapped")
                } label: {
                    Image(systemName: "pencil")
                        .scaleEffect(3)
                }
                
                Button("Show Alert") {
                    showingAlert = false
                }
                .alert("Important message", isPresented: $showingAlert) {
                    Button("Delete", role: .destructive) {}
                    Button("Cancel", role: .cancel) {}
                } message: {
                    Text("Please read this first.")
                }
                
            }
            
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
