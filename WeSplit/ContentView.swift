//
//  ContentView.swift
//  WeSplit
//
//  Created by jatin foujdar on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    
    let tipPercentages = [10,15,20,25,0]
    var body: some View {
        Form{
            Section{
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ??  "Rs"))
            }
        }
    }
}
#Preview {
    ContentView()
}
