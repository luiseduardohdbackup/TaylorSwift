import UIKit

extension UIColor {
	// usage:
	// myButton.backgroundColor = UIColor.rgb(240, 10, 20)
	class func rgb(red: Int, _ green: Int, _ blue: Int) -> UIColor {
		return rgba(red, green, blue, 255)
	}
	
	// usage:
	// myButton.backgroundColor = UIColor.rgba(240, 10, 20, 20)
	class func rgba(red: Int, _ green: Int, _ blue: Int, _ alpha: Int) -> UIColor {
		return UIColor(
			red  : CGFloat(red)   / 255.0,
			green: CGFloat(green) / 255.0,
			blue : CGFloat(blue)  / 255.0,
			alpha: CGFloat(alpha) / 255.0
		)
	}
}
