//
//  ContentView.swift
//  CustomFontUI
//
//  Created by headmaster on 2020/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(.green)

            Text("Joshuo Tree National Park")
                .font(.subheadline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
