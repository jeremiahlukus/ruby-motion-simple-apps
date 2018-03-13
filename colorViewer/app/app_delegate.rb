class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = ColorsController.alloc.initWithNibName(nil, bundle: nil) 
    rootViewController.title = 'colorViewer'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    nav_controller =  UINavigationController.alloc.initWithRootViewController(rootViewController)

    top_controller = ColorDetailController.alloc.initWithColor(UIColor.purpleColor)
    top_controller.title = "Top Color"
    top_nav_controller = UINavigationController.alloc.initWithRootViewController(top_controller)
    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [nav_controller, top_nav_controller] 
    @window.rootViewController = tab_controller

    true
  end
end
