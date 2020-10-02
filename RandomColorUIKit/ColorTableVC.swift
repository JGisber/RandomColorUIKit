//
//  ColorTableVC.swift
//  RandomColorUIKit
//
//  Created by Josue Gisber on 10/1/20.
//

import UIKit

class ColorTableVC: UIViewController{
	
	var colors = [UIColor]()
	
	enum Cells {
		static let colorCell = "colorCell"
	}
	
	enum Segue {
		static let toDetail = "ToColorDetailVC"
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		addRandomColors()
	}
	
	func addRandomColors() {
		for _ in 0 ..< 50 {
			colors.append(.random())
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destVC = segue.destination as! ColorDetailVC
		destVC.color = sender as? UIColor
	}
}


extension ColorTableVC: UITableViewDelegate, UITableViewDataSource {
	
	// how many row to show
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return colors.count
	}
	
	// what to show in those rows
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
			return UITableViewCell()
		}
		cell.backgroundColor = colors[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let color = colors[indexPath.row]
		performSegue(withIdentifier: Segue.toDetail, sender: color)
	}
}
