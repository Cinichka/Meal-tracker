//
//  Meal.swift
//  Meal tracker
//
//  Created by Вероника Садовская on 06/10/2018.
//  Copyright © 2018 Veronika Sadovskaya. All rights reserved.
//

import Foundation
import UIKit

struct Meal {
	let name: String
	let photo: UIImage
	let notes: String
	let rating: Int
	let timestamp: Date
	
	init( name: String, photo: UIImage, notes: String, rating: Int, timestamp: Date) {
		self.name = name
		self.photo = photo
		self.notes = notes
		self.rating = rating
		self.timestamp = timestamp
	}
}

