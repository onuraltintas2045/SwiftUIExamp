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
        window.makeKeyAndVisible()
        window.overrideUserInterfaceStyle = .dark
        window.rootViewController = HomePageVC()
        self.window = window
    }


}

