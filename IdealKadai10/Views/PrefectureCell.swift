//
//  TableViewCell.swift
//  IdealKadai10
//
//  Created by 中野翔太 on 2022/01/21.
//

import UIKit

class PrefectureCell: UITableViewCell {
    static let identifier = "PrefectureCell"

   static func nib() -> UINib {
          return UINib(nibName: "PrefectureCell", bundle: nil)
      }


    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var numeLabel: UILabel!

    func configure(title: String, detile: Int) {
        nameLabel.text = title
        numeLabel.text = "\(detile + 1)番目の都道府県です"
        let color: [UIColor] = [.red, .green, .blue]
        contentView.backgroundColor = color[detile % color.count]
    }

}

