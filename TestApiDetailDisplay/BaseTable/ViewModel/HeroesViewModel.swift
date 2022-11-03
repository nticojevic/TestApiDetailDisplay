//
//  EdamamViewModel.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import Foundation

protocol HeroesViewModelDelegate: NSObject {
    func dataFetch(data: [HeroesModel])
}

class HeroesViewModel: NSObject {
    weak var delegate: HeroesViewModelDelegate?
    private let service: DotaHeroesService

    init(service: DotaHeroesService) {
        self.service = service
    }

    func getData() {
        service.delegate = self
        service.getData()
    }
}

extension HeroesViewModel: DotaHeroesServiceDelegate {
    func getHeroes(heroes: [HeroesModel]) {
        delegate?.dataFetch(data: heroes)
    }
}
