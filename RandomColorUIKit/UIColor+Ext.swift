//
//  UIColor+Ext.swift
//  RandomColorUIKit
//
//  Created by Josue Gisber on 10/2/20.
//

import UIKit

extension UIColor {
	static func random() -> UIColor {
		let randomcolor = UIColor(red: CGFloat.random(in: 0...1),
								  green: CGFloat.random(in: 0...1),
								  blue: CGFloat.random(in: 0...1),
								  alpha: 1.0)
		return randomcolor
	}
}
