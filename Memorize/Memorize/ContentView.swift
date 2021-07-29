//
//  ContentView.swift
//  Memorize
//
//  Created by Garfield Lee on 7/29/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24).stroke(lineWidth: 3)
            Text("Hello, world!")
        }.padding(.horizontal).foregroundColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
