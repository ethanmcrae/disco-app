//
//  Quote.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import Foundation

struct Quote: Codable, Identifiable {
    let id: Int
    let text: String
    let categories: [String]
}
