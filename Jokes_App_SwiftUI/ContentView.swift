//
//  ContentView.swift
//  Jokes_App_SwiftUI
//
//  Created by Asya Güney on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
                }
            .toolbar {
                Button(action: addJoke) {
                    Text("Get a new joke!")
                }
            }
            .navigationTitle("Jokes App")
        }
        
    }
    func addJoke(){
        jokesVM.getJokes(count: 1)
    }
}

#Preview {
    ContentView()
}
