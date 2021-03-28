//
//  ContentView.swift
//  First
//
// Based on Linkedin Introduction to iOS 14 programing
//
//  Created by Paweł Ładna on 26/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPrecent: Double = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            HStack {
                Text("PLN")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }.padding()
            
            HStack {
                Slider(value: $tipPrecent, in: 1...30, step: 1.0)
                Text("\(Int (tipPrecent))%")
            }.padding()
            
            if let totalNum = Double(total) {
                Text("Tip ammount: \(totalNum * tipPrecent / 100, specifier: "%0.2f") PLN").font(.title2).bold()
            } else {
                Text("Please eneter valid numerical value")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
