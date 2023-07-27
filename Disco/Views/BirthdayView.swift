//
//  BirthdayView.swift
//  Disco
//
//  Created by Ethan McRae on 7/27/23.
//

import SwiftUI

struct BirthdayView: View {
    @Environment(\.presentationMode) var presentationMode

    @State private var name = ""
    @State private var date = Date()

    var onComplete: (String, Date) -> Void = { _,_ in }

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                DatePicker("Date", selection: $date, displayedComponents: .date)
            }
            .navigationBarTitle("Add a birthday", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                },
                trailing: Button("Done") {
                    guard !name.isEmpty else {
                        return
                    }
                    onComplete(name, date)
                    presentationMode.wrappedValue.dismiss()
                }
            )
        }
    }
}

struct BirthdayView_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayView()
    }
}

