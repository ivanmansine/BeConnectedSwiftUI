//
//  ContentView.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "newspaper")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Test")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
