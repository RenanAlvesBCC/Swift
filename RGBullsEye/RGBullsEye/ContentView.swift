//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Renan Alves on 1/23/20.
//  Copyright © 2020 Renan Alves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack{
            HStack {
                VStack {
                    Color(red: rTarget, green: gTarget, blue: bTarget)
                    Text("Hello, Guys!")
                        .foregroundColor(Color.red)
                        .lineLimit(0)
                }
                VStack {
                    Color(red: rGuess, green: gGuess, blue: bGuess)
                    Text("R: 127 G: 127 B: 127")
                }
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
            }
            Slider(value: .constant(0.5))
        }
    }
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.7, gGuess: 0.3, bGuess: 0.6).previewLayout(.fixed(width: 568, height: 320))
    }
}
