//
//  ContentView.swift
//  WeSplit
//
//  Created by jatin foujdar on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    
    var body: some View {
        Button("Tap Count :  \(tapCount)"){
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
