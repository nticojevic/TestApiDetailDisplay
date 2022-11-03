//
//  DetailViewController.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/27/22.
//

import UIKit
import Kingfisher
class DetailViewController: UIViewController {

    @IBOutlet weak var heroDetailImageView: UIImageView!
    @IBOutlet weak var heroDetailDetails: UITextView!
    var data:HeroesModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        detailSetup()

    }
    func detailSetup() {
        if let heroData = data {
            let detail = """
                        Name: \(heroData.localized_name ?? "")
                        Attack type: \(heroData.attack_type ?? "")
                        Move speed: \(heroData.move_speed ?? 0)

                        Roles:

                        \(heroData.roles!.minimalDescription)
                        """
            heroDetailDetails.text = detail
            heroDetailImageView.setImage(with:TargetApi.base + (heroData.img)!)
        }
    }
}
