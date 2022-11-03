//
//  BaseTableViewCell.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/27/22.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    static let identifier = "BaseTableViewCell"
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
