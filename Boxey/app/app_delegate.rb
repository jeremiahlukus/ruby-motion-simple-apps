class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'Boxey'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    @blue_view = UIView.alloc.initWithFrame(CGRect.new([10, 10], [100, 100]))
    @blue_view.backgroundColor =  String.new('#C3F991').to_color 
    @window.addSubview(@blue_view)

    @window.addSubview(@blue_view)
    @add_button = UIButton.buttonWithType(UIButtonTypeRoundedRect) 
    @add_button.setTitle("Add", forState:UIControlStateNormal) 
    @add_button.sizeToFit
    @add_button.frame = CGRect.new(
      [10, @window.frame.size.height - 10 - @add_button.frame.size.height],
      @add_button.frame.size)
    @window.addSubview(@add_button)
    @add_button.addTarget(self, action:"add_tapped", forControlEvents:UIControlEventTouchUpInside)

    true
  end


  def add_tapped
    new_view = UIView.alloc.initWithFrame(CGRect.new([0, 0], [100, 100])) 
    new_view.backgroundColor = UIColor.blueColor
    last_view = @window.subviews[0]
    new_view.frame = CGRect.new(
      [last_view.frame.origin.x,
       last_view.frame.origin.y + last_view.frame.size.height + 10],
       last_view.frame.size)
    @window.insertSubview(new_view, atIndex:0)
  end

end
