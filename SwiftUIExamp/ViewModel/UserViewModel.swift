//
//  UserViewModel.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        isLoading = true
        NetworkManager.shared.fetchUsers()
            .sink(receiveCompletion: { [weak self] completion in
                guard let self = self else { return }
                self.isLoading = false
                if case let .failure(error) = completion {
                    print("Error: \(error)")
                }
            }, receiveValue: { users in
                self.users = users
            })
            .store(in: &cancellables)

    }
}
