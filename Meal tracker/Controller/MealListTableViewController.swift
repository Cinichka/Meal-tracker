//
//  MealListTableViewController.swift
//  Meal tracker
//
//  Created by Вероника Садовская on 06/10/2018.
//  Copyright © 2018 Veronika Sadovskaya. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {
	
	let meals:[Meal] = [
		Meal(name: "Блин E-mail с грибами и сыром", photo: UIImage(named: "blin_e_mail")!, notes: "Блин с грибами в сливках и сыром", rating: 0, timestamp: Date()),
		Meal(name: "Блин Илья Муромец", photo: UIImage(named: "ilya_muromets")!, notes: "Блин с бужениной под соусом на выбор, c грибами, сыром и зеленью", rating: 0, timestamp: Date()),
		Meal(name: "Блин «Хачапури»", photo: UIImage(named: "khachapuri")!, notes: "Блин, смазанный сливочным маслом, с сыром сулугуни в начинке.", rating: 0, timestamp: Date()),
		Meal(name: "Блин Куриный богатырь", photo: UIImage(named: "kurinyy_bogatyr")!, notes: "Аппетитный большой блин с курицей, грибами, зеленью, сыром и яблочным соусом", rating: 0, timestamp: Date()),
		Meal(name: "Блин Цезарь", photo: UIImage(named: "blin_cezar")!, notes: "Блин с аппетитной куриной грудкой, салатом айсберг, репчатым луком, тертым твердым сыром, майонезом и соусом на выбор: томатным или кетчупом.", rating: 0, timestamp: Date()),
		Meal(name: "Блин с красной икрой", photo: UIImage(named: "blin_s_krasnoy_ikroy")!, notes: "Блин с красной икрой", rating: 0, timestamp: Date()),
		Meal(name: "Блин с сёмгой", photo: UIImage(named: "blin_s_semgoy")!, notes: "Блин со слабосоленой семгой", rating: 0, timestamp: Date()),
		Meal(name: "Блин Фермерский", photo: UIImage(named: "fermerskiy")!, notes: "Блин с беконом, картофельным пюре, маринованными огурчиками и луком-фри", rating: 0, timestamp: Date()),
		Meal(name: "Блин Мясной богатырь", photo: UIImage(named: "myasnoy_bogatyr")!, notes: "Большой блин с рубленым мясом, грибами и сметаной", rating: 0, timestamp: Date()),
		Meal(name: "Блинчик с ветчиной и сыром", photo: UIImage(named: "blinchik_s_vetchinoy_i_syrom")!, notes: "Блинчик с 1 ломтиком ветчины и 1 ломтиком сыра", rating: 0, timestamp: Date()),
		Meal(name: "Блин Барбекю с бужениной", photo: UIImage(named: "barbekyu_s_buzheninoy_smaller")!, notes: "Блин с бужениной, сыром моцарелла, свежим луком и соусом барбекю.", rating: 0, timestamp: Date())
	]

    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.title = "Блины сытные"
    }

    // MARK: - Table view data source

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return meals.count
	}

	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MealListTableViewCell
		cell.maelLabel.text = meals[indexPath.row].name
		cell.mealImage.image = meals[indexPath.row].photo
		
		return cell
	}

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "detail" {
			if let indexPath = tableView.indexPathForSelectedRow {
				let dvc = segue.destination as! MealDetailViewController
				dvc.meals = meals[indexPath.row]
			}
		}
    }


}
