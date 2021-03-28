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
    var body: some View {
        VStack {
            Text("Tip Calculator").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            HStack {
                Text("PLN")
                Text("TextField")
            }.padding()
            
            HStack {
                Text("Silder")
                Text("%")
            }.padding()
            
            Text("Total tip").font(.title2).bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
