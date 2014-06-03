import UIKit

class HomepageViewController: UIViewController {
	
	let webView = UIWebView(frame:CGRect())
	
	override func loadView() {
		self.view = self.webView
		self.navigationItem.title = "Homepage"
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		let url = NSURL(string: "http://taylorswift.com/")
		self.webView.loadRequest(NSURLRequest(URL: url))
	}
	
}

