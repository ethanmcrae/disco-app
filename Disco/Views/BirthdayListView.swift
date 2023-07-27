//
//  BirthdayListView.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import SwiftUI

struct BirthdayListView: View {
    @State private var birthdays: [Birthday] = []
    @State private var showingAddBirthday = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(birthdays) { birthday in
                    HStack {
                        Text(birthday.name)
                        Spacer()
                        Text(getDateString(from: birthday.date))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("Birthdays")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {
                    showingAddBirthday = true
                }) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $showingAddBirthday) {
            BirthdayView { name, date in
                addBirthday(name: name, date: date)
                showingAddBirthday = false
            }
        }
        .onAppear(perform: loadBirthdays)
    }
    
    func getDateString(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: date)
    }
    
    func addBirthday(name: String, date: Date) {
        let birthday = Birthday(name: name, date: date)
        birthdays.append(birthday)
        saveBirthdays()
    }
    
    func deleteItems(at offsets: IndexSet) {
        birthdays.remove(atOffsets: offsets)
        saveBirthdays()
    }
    
    func loadBirthdays() {
        if let savedData = UserDefaults.standard.data(forKey: "Birthdays") {
            if let decodedData = try? JSONDecoder().decode([Birthday].self, from: savedData) {
                self.birthdays = decodedData
            }
        }
    }
    
    func saveBirthdays() {
        if let savedData = try? JSONEncoder().encode(birthdays) {
            UserDefaults.standard.set(savedData, forKey: "Birthdays")
        }
    }
}

struct BirthdayListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BirthdayListView()
                .previewDevice("iPhone 12")
            BirthdayListView()
                .previewDevice("iPhone SE (2nd generation)")
            BirthdayListView()
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}
