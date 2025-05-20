//
//  NetworkManager.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import Foundation
import Combine

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchUsers() -> AnyPublisher<[User], Error> {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [User].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
        
    }
}
