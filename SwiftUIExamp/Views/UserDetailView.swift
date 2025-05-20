//
//  UserDetailView.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    @EnvironmentObject var appSettings: AppSettings
    var body: some View {
        VStack(spacing: 20) {
            Text("\(user.name)")
            Text("\(user.email)")
            Button {
                appSettings.SelectedUserName = user.name
            } label: {
                Text("Change SelectedUserName")
            }

        }
        .padding()
        .navigationTitle("Details")
    }
}


