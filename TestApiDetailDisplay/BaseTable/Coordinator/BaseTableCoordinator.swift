//
//  BaseTableCoordinator.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import UIKit

class BaseTableCoordinator: BaseCoordinator {
    private var viewModel: HeroesViewModel!

    override func start() {
        setupData()

        let baseTableViewController = BaseTableViewController()
        baseTableViewController.viewModel = viewModel
        self.navigationController = UINavigationController(rootViewController: baseTableViewController)
        self.navigationController.viewControllers = [baseTableViewController]
        
    }

    private func setupData() {
        let service = DotaHeroesService()
        viewModel = HeroesViewModel(service: service)
    }
}
