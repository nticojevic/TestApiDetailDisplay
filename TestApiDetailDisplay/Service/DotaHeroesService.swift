//
//  EdmamFoodApiCall.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import Alamofire

class DotaHeroesService {
    let requestString = TargetApi.base

    func getData() {
        let request = AF.request(requestString)
        request.responseDecodable(of: [HeroesModel].self){
            response in
            print("Response DecodableType: \(String(describing: response.value))")
        }
    }
}
