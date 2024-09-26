//
//  ContentView.swift
//  WeSplit
//
//  Created by jatin foujdar on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
                Section{
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
            }
            .navigationTitle("WeSplit")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
