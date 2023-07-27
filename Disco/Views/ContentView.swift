//
//  ContentView.swift
//  Disco
//
//  Created by Ethan McRae on 7/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    QuoteView()
                        .tabItem {
                            Label("Quotes", systemImage: "quote.bubble")
                        }

                    BirthdayListView()
                        .tabItem {
                            Label("Birthdays", systemImage: "calendar")
                        }

                    SettingsView()
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
                }
            }
            .navigationBarTitle("Disco Response")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
