//
//  EdamamRecipeModel.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import Foundation

struct HeroesModel: Decodable {
    let img : String?
    let icon : String?
    let localized_name : String?
    let attack_type: String?
    let roles : [String]?
    let move_speed : Int?
}
