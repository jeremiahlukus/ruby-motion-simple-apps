class RootViewController < UIViewController


  def loadView
    self.view = UIImageView.alloc.init 

  end 

  def viewDidLoad 
    puts "hey"
    self.view = UIImageView.alloc.init
    $image = UIImage.imageNamed("newbackground.png")
    view.image = UIImage.imageNamed("newbackground.png")
    @roll_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @roll_button.setTitle("Roll", forState:UIControlStateNormal)
    @roll_button.font = UIFont.fontWithName("AppleGothic",size:24)
    @roll_button.frame = [[133, 482], [109, 50]]
    @roll_button.sizeToFit
    @roll_button.addTarget(self, action: randomDice, forControlEvents:UIControlEventTouchUpInside)

    view.addSubview(@roll_button)

  end 

  def randomDice 
    num1 = rand(1..6)
    num2 = rand(1..6)
    puts num1 
    puts num2
  end 

end
