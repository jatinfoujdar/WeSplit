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
    @FocusState private var amountIs : Bool
    
    let tipPercentages = [10,15,20,25,0]
    var body: some View {
        var totalPerson: Double{
            let peopleCount = Double(numberOfPeople + 2)
            let tipSelection = Double(tipPercentage)
            
            let tipValue = checkAmount / 100 * tipSelection
            let grandTotal = checkAmount + tipValue
            let amountPerPerson = grandTotal / peopleCount
            return amountPerPerson
        }
        NavigationStack{
        Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ??  "Rs"))
                        .keyboardType(.decimalPad)
                        .focused($amountIs)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
            Section("How much do you want to Tip?"){
                Picker("Tip Percentage", selection: $tipPercentage){
                    ForEach(tipPercentages , id: \.self){
                        Text($0, format: .percent)
                    }
                }
                .pickerStyle(.segmented)
            }
          
                Section{
                    Text(totalPerson, format: .currency(code: Locale.current.currency?.identifier ??  "Rs" ))
                }
            }
        .navigationTitle("We-Split")
        .toolbar{
            if amountIs{
                Button("Done"){
                    amountIs = false
                }
            }
        }
        }
    }
}
#Preview {
    ContentView()
}
