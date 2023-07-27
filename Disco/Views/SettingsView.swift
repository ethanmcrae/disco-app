//
//  SettingsView.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var isRandomOn: Bool = false

    var body: some View {
        Form {
            Section(header: Text("General")) {
                Toggle(isOn: $isRandomOn) {
                    Text("Random")
                }
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
