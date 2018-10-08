//
//  MealListTableViewCell.swift
//  Meal tracker
//
//  Created by Вероника Садовская on 06/10/2018.
//  Copyright © 2018 Veronika Sadovskaya. All rights reserved.
//

import UIKit

class MealListTableViewCell: UITableViewCell {

	@IBOutlet weak var mealImage: UIImageView!
	@IBOutlet weak var maelLabel: UILabel!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
	
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
