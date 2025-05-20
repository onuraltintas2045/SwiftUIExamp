//
//  UserListView.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import SwiftUI

struct UserListView: View {
    @StateObject private var viewModel = UserViewModel()
    @EnvironmentObject var appSettings: AppSettings
    @State private var textColor: Color = .blue
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                NavigationLink(destination: UserDetailView(user: user)) {
                    Text(user.name)
                        .foregroundColor(textColor)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                print("UserListView.onAppear")
                viewModel.fetchData()
            }
        }
        .onChange(of: appSettings.SelectedUserName) { newValue in
            print("onChange tetiklendi")
            self.textColor = (self.textColor == .red) ? .blue : .red
        }
    }
}
