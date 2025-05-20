//
//  User.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import Foundation


struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
