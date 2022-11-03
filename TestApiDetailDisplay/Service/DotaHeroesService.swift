//
//  EdmamFoodApiCall.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import Alamofire

protocol DotaHeroesServiceDelegate: NSObject {
    func getHeroes(heroes: [HeroesModel])
}

class DotaHeroesService {
    private let requestString = TargetApi.baseHeroStats
    var heroesData: [HeroesModel] = []

    weak var delegate: DotaHeroesServiceDelegate?

    func getData()  {
        let request = AF.request(requestString)
        request.responseDecodable(of: [HeroesModel].self) { response in
            guard let data = response.value else { return }
            self.heroesData = data
            self.delegate?.getHeroes(heroes: self.heroesData)
        }
    }
}
