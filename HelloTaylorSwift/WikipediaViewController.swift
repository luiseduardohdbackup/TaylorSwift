import UIKit

class WikipediaViewController: UIViewController {
	
	let webView = UIWebView(frame:CGRect())
	
	override func loadView() {
		self.view = self.webView
		self.navigationItem.title = "Wikipedia"
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		let url = NSURL(string: "http://en.wikipedia.org/wiki/Taylor_Swift")
		self.webView.loadRequest(NSURLRequest(URL: url))
	}
	
}

