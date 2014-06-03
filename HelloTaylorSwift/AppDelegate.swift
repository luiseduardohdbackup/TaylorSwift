import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
	var window: UIWindow?

	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {

		let windowFrame = UIScreen.mainScreen().bounds
		let window = UIWindow(frame:windowFrame)
		let vc = FirstViewController()
		window.rootViewController = UINavigationController(rootViewController: vc)
		self.window = window
		window.makeKeyAndVisible()
		
		return true
	}

}

