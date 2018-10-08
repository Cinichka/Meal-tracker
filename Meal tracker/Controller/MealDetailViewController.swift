//
//  MealDetailViewController.swift
//  Meal tracker
//
//  Created by Вероника Садовская on 06/10/2018.
//  Copyright © 2018 Veronika Sadovskaya. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {
	
	var meals: Meal?
	
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var image: UIImageView!
	@IBOutlet weak var date: UILabel!
	@IBOutlet weak var starOne: UIButton!
	@IBOutlet weak var starTwo: UIButton!
	@IBOutlet weak var starThree: UIButton!
	@IBOutlet weak var starFour: UIButton!
	@IBOutlet weak var starFive: UIButton!	
	@IBOutlet weak var text: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		name.text = meals?.name
		image.image = meals?.photo
		let dateFormat = DateFormatter()
		dateFormat.dateFormat = "dd.MM.yyyy hh:mm:ss"
		let dateString = dateFormat.string(from: meals!.timestamp)
		date.text = dateString
		text.text = meals?.notes
	}
	
	@IBAction func ratingPress(_ sender: UIButton) {
		switch sender.tag {
		case 0:
			sender.alpha = 1
			starTwo.alpha = 0.5
			starThree.alpha = 0.5
			starFour.alpha = 0.5
			starFive.alpha = 0.5
		case 1:
			sender.alpha = 1
			starOne.alpha = 1
			starThree.alpha = 0.5
			starFour.alpha = 0.5
			starFive.alpha = 0.5
		case 2:
			sender.alpha = 1
			starOne.alpha = 1
			starTwo.alpha = 1
			starFour.alpha = 0.5
			starFive.alpha = 0.5
		case 3:
			sender.alpha = 1
			starOne.alpha = 1
			starTwo.alpha = 1
			starThree.alpha = 1
			starFive.alpha = 0.5
		case 4:
			sender.alpha = 1
			starOne.alpha = 1
			starTwo.alpha = 1
			starThree.alpha = 1
			starFour.alpha = 1
		default:
			break
		}
		
	}

}
