//
//  ContentView.swift
//  WeSplit
//
//  Created by jatin foujdar on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form{
            TextField("Enter Your Name",text: $name)
            Text("Hello \(name)")
        }
    }
}

#Preview {
    ContentView()
}
