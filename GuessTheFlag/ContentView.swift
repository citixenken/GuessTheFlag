//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ken Muyesu on 07/12/2021.
//

import SwiftUI

struct ContentView: View {
    //
    //    func executeData() {
    //        print("Here we go...")
    //    }
    //
    //    @State private var showingAlert = true
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "US", "UK"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            //            Color.blue
            //                .ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.3), location: 0.1),
                .init(color: Color(red: 0.76, green: 0.1, blue: 0.3), location: 0.4),
            ], center: .top, startRadius: 200, endRadius: 800)
                .ignoresSafeArea()
            
            VStack {
                Text("Guess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                Spacer()
                
                VStack (spacing: 20){
                    VStack {
                        Text("Tap the flag of...")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .foregroundColor(.primary)
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach (0..<3) { number in
                        Button {
                            //flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original) //render original pixels rather than recolouring them as a button
                                .clipShape(Capsule())
                                .shadow(color: .mint, radius: 5, x: 5, y: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: @@@")
                    .foregroundColor(.white)
                    .font(.title.weight(.bold))
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is @@@")
        }
        //
        //        ZStack {
        //            //entire screen background
        //            VStack (spacing: 0){
        //                //Color.red
        //                //Color.blue
        //
        //                //gradients
        //
        //                //                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
        //
        //                //                RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        //
        //                //            LinearGradient(gradient: Gradient(stops: [
        //                //                    .init(color: .white, location: 0.30),
        //                //                    .init(color: .black, location: 0.70),
        //                //            ]), startPoint: .top, endPoint: .bottom)
        //
        //                //                LinearGradient(gradient: Gradient(stops: [
        //                //                        Gradient.Stop(color: .white, location: 0.45),
        //                //                        Gradient.Stop(color: .black, location: 0.55),
        //                //                    ]), startPoint: .top, endPoint: .bottom)
        //
        //                LinearGradient(gradient: Gradient(colors: [.pink, .black]), startPoint: .top, endPoint: .bottom)
        //
        //            }
        //            //Color(red: 0.6, green: 0.9, blue: 1)
        //            //.ignoresSafeArea()
        //            //.frame(width: 400, height: 400)
        //            //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
        //
        //            VStack {
        //                Text("What a day!")
        //                    .padding(60)
        //                //.foregroundColor(.secondary)
        //                    .foregroundStyle(.secondary) //vibrancy
        //                    .background(.ultraThinMaterial) //frosted glass material
        //                Button("Find out more", role: .destructive, action: executeData)
        //                Button("Button 1") { }
        //                        .buttonStyle(.bordered)
        //                        .tint(.mint)
        //                Button("Button 2", role: .destructive) { }
        //                        .buttonStyle(.bordered)
        //                Button("Button 3") { }
        //                        .buttonStyle(.borderedProminent)
        //                        .tint(.mint)
        //                Button("Button 4", role: .destructive) { }
        //                        .buttonStyle(.borderedProminent)
        //
        //                Button {
        //                    print("Edit button was tapped")
        //                } label: {
        //                    Label("Edit", systemImage: "pencil")
        //                }
        //
        //                Button {
        //                    print("Button was tapped")
        //                } label: {
        //                    Text("Tap me!")
        //                        .padding()
        //                        .foregroundColor(.white)
        //                        .background(.red)
        //                        .cornerRadius(10)
        //                }
        //
        //                Button {
        //                    print("Edit button was tapped")
        //                } label: {
        //                    Image(systemName: "pencil")
        //                        .scaleEffect(3)
        //                }
        //
        //                Button("Show Alert") {
        //                    showingAlert = false
        //                }
        //                .alert("Important message", isPresented: $showingAlert) {
        //                    Button("Delete", role: .destructive) {}
        //                    Button("Cancel", role: .cancel) {}
        //                } message: {
        //                    Text("Please read this first.")
        //                }
        //
        //            }
        //
        //        }
        //        //background for text
        //        .background(.blue)
        //        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
