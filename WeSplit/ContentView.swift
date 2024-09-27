//
//  ContentView.swift
//  WeSplit
//
//  Created by jatin foujdar on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    let students = ["harry", "hermonie", "roy"]
    @State private var selectedStudent = "harry"
    
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select Your Student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a Student")
        }
    }
}
#Preview {
    ContentView()
}
