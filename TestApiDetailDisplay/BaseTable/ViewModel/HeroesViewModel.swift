//
//  EdamamViewModel.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import Foundation

class HeroesViewModel {
    private let service: DotaHeroesService

    init(service: DotaHeroesService) {
        self.service = service
    }

    func getRecipies() {
        service.getData()
    }

}
