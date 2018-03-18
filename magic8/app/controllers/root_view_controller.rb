class RootViewController < UIViewController 


  def viewDidLoad 
    $containerView = UIView.alloc.init
    magicEight
  end

  def magicEight 
    randNum = rand(1..5) 

    magicView = UIImageView.alloc.initWithFrame([[67, 219],[240,213]]) 
    magicView.image = UIImage.imageNamed("ball#{randNum}") 

    $containerView.addSubview magicView 

    ask_button = UIButton.buttonWithType UIButtonTypeRoundedRect
    ask_button.addTarget(self, action: :magicEight, forControlEvents: UIControlEventTouchUpInside)
    ask_button.setTitle 'Ask', forState: UIControlStateNormal 
    ask_button.frame = CGRectMake(96, 474, 183, 89)
    ask_button.font = UIFont.fontWithName("Avenir-Black", size: 30) 
    view.addSubview $containerView 
    view.addSubview ask_button 
  end  


end
