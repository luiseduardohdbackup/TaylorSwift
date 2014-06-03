import UIKit

class YouTubeViewController: UIViewController {
	
	let webView = UIWebView(frame:CGRect())
	
	override func loadView() {
		self.view = self.webView
		self.navigationItem.title = "YouTube"
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		let url = NSURL(string: "https://www.youtube.com/user/taylorswift")
		self.webView.loadRequest(NSURLRequest(URL: url))
	}
	
}

