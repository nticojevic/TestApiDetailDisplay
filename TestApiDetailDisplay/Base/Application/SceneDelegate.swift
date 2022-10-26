//
//  SceneDelegate.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var navigation: UINavigationController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)

        let appCoordinator = AppCoordinator(window!)
        appCoordinator.start()
    }
}

