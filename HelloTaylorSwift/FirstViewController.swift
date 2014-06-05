import UIKit


class FirstViewController: UIViewController {
                            
	let button0 = UIButton(frame:CGRect())
	let button1 = UIButton(frame:CGRect())
	let button2 = UIButton(frame:CGRect())
	
	override func loadView() {
		self.view = UIView();
		self.view.backgroundColor = UIColor.whiteColor()
		
		self.navigationItem.title = "Taylor Swift"
		
		// the homepage
		button0.addTarget(self, action: "button0Action", forControlEvents: UIControlEvents.TouchUpInside)
		button0.setTitle("Homepage", forState: UIControlState.Normal)
		button0.backgroundColor = UIColor.rgb(240, 20, 20)
		self.view.addSubview(button0)

	
		// the wikipedia page
		button1.addTarget(self, action: "button1Action", forControlEvents: UIControlEvents.TouchUpInside)
		button1.setTitle("Wikipedia", forState: UIControlState.Normal)
		button1.backgroundColor = UIColor.rgb(20, 240, 20)
		self.view.addSubview(button1)

	
		// youtube
		button2.addTarget(self, action: "button2Action", forControlEvents: UIControlEvents.TouchUpInside)
		button2.setTitle("YouTube", forState: UIControlState.Normal)
		button2.backgroundColor = UIColor.rgb(20, 20, 240)
		self.view.addSubview(button2)
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		let insets = UIEdgeInsets(top:84, left:20, bottom:20, right:20)
		let rect = UIEdgeInsetsInsetRect(self.view.bounds, insets)
		
		var remain:CGRect, slice:CGRect
		remain = rect
		
		(slice, remain) = remain.rectsByDividing(80, fromEdge:CGRectEdge.MinYEdge)
		self.button0.frame = slice

		(slice, remain) = remain.rectsByDividing(20, fromEdge:CGRectEdge.MinYEdge)
		(slice, remain) = remain.rectsByDividing(80, fromEdge:CGRectEdge.MinYEdge)
		self.button1.frame = slice
		
		(slice, remain) = remain.rectsByDividing(20, fromEdge:CGRectEdge.MinYEdge)
		(slice, remain) = remain.rectsByDividing(80, fromEdge:CGRectEdge.MinYEdge)
		self.button2.frame = slice
		
	}
	
	func button0Action() {
		let vc = HomepageViewController()
		self.navigationController.pushViewController(vc, animated:true)
	}
	
	func button1Action() {
		let vc = WikipediaViewController()
		self.navigationController.pushViewController(vc, animated:true)
	}
	
	func button2Action() {
		let vc = YouTubeViewController()
		self.navigationController.pushViewController(vc, animated:true)
	}
	
}

