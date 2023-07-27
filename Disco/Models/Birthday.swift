//
//  Birthday.swift
//  Disco
//
//  Created by Ethan McRae on 7/27/23.
//

import Foundation

struct Birthday: Identifiable, Codable {
    let id = UUID()
    let name: String
    let date: Date
}

