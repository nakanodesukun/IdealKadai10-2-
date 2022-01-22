//
//  ViewController.swift
//  IdealKadai10
//
//  Created by 中野翔太 on 2022/01/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet private weak var tableView: UITableView!
    // 都道府県のデータを呼び出す
    private let prefectur = PrefectureData.prefecures

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PrefectureCell.nib(), forCellReuseIdentifier: PrefectureCell.identifier)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefectur.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PrefectureCell.identifier, for: indexPath) as! PrefectureCell
        cell.configiure(title:  prefectur[indexPath.row], detile: indexPath.row)
        return cell
    }


}

