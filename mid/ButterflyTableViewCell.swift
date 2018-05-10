//
//  ButterflyTableViewCell.swift
//  mid
//
//  Created by viplab on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewCell: UITableViewCell {

    @IBOutlet weak var butterflylabel: UILabel!
    @IBOutlet weak var butterflyimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
