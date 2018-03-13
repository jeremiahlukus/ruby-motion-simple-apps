class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'progmaticHelloWorld'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    @alert = 
      UIAlertView.alloc.initWithTitle("Hello bro", 
                                      message: "Yo Ruby", 
                                      delegate: nil, 
                                      cancelButtonTitle: "OK", 
                                      otherButtonTitles: nil)
    @alert.show 
    puts "This is in the console"

    true
  end
end
