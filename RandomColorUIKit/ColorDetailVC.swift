//
//  ColorDetailVC.swift
//  RandomColorUIKit
//
//  Created by Josue Gisber on 10/1/20.
//

import UIKit

class ColorDetailVC: UIViewController {
	
	var color: UIColor?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		view.backgroundColor = color ?? .blue
    }
    


}
