//
//  SceneDelegate.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let homeVC = HomePageVC()
        let navController = UINavigationController(rootViewController: homeVC)
        navController.overrideUserInterfaceStyle = .dark
        window.rootViewController = navController
        self.window = window
        window.makeKeyAndVisible()
    }
}

