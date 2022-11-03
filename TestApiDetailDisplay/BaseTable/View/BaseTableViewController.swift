//
//  ViewController.swift
//  TestApiDetailDisplay
//
//  Created by Nikola Ticojevic on 10/26/22.
//

import UIKit
import Kingfisher

class BaseTableViewController: UITableViewController {
    var viewModel: HeroesViewModel!
    private var data: [HeroesModel] = []



    override func viewDidLoad() {
        super.viewDidLoad()

        setupData()
        setupTableView()

    }



    private func setupData() {
        viewModel.getData()
        viewModel.delegate = self
    }
}

extension BaseTableViewController {
    private func setupTableView() {

        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 90
        tableView.register(UINib(nibName: BaseTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: BaseTableViewCell.identifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

  override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: BaseTableViewCell.identifier, for: indexPath) as? BaseTableViewCell {
            cell.nameLabel.text = data[indexPath.row].localized_name
            cell.self.heroImageView.setImage(with:TargetApi.base + data[indexPath.row].icon!)

            return cell
        }
        return UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let detailVC = DetailViewController()
        detailVC.data = data[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)

    }
}

extension BaseTableViewController: HeroesViewModelDelegate {
    func dataFetch(data: [HeroesModel]) {
        self.data = data
        tableView.reloadData()
    }


}
