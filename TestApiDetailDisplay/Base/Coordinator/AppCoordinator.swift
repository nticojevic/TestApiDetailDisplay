//
//  AppCoordinator.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//
import UIKit

class AppCoordinator: BaseCoordinator {
    private var window: UIWindow

    init(_ window: UIWindow) {
        self.window = window
    }

    override func start() {
        let home = BaseTableCoordinator()
        self.start(coordinator: home)

        window.rootViewController = home.navigationController
        window.makeKeyAndVisible()
    }
}
