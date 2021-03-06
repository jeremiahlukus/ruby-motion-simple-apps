class RootViewController < UIViewController


  def viewDidLoad 
     $containerView = UIView.alloc.init
     $image = UIImage.imageNamed("newbackground.png")

     background = UIImageView.alloc.initWithFrame([[0, 0], [500,  UIScreen.mainScreen.bounds.size.height]])
     background.image = UIImage.imageNamed("newbackground.png")

     $containerView.addSubview background 
     randomDice
  end

  def randomDice 
    num1 = rand(1..6)
    num2 = rand(1..6)

    dice1 = "dice#{num1}"
    dice2 = "dice#{num2}"
    dice1View = UIImageView.alloc.initWithFrame([[40, 273], [120, 120]])
    dice2View = UIImageView.alloc.initWithFrame([[215, 273], [120, 120]])
    dice1View.image = UIImage.imageNamed("#{dice1}.png")
    dice2View.image = UIImage.imageNamed("#{dice2}.png")
    $containerView.addSubview dice1View 
    $containerView.addSubview dice2View 
    puts num1 
    puts num2 
    self.view.addSubview($containerView)
    roll_button = UIButton.buttonWithType UIButtonTypeRoundedRect
    roll_button.addTarget(
      self,
      action: :randomDice,
      forControlEvents: UIControlEventTouchUpInside
    )

    roll_button.setTitle 'Roll', forState: UIControlStateNormal
    roll_button.frame = CGRectMake(133, 482, 109, 50)

    view.addSubview roll_button


  end 

end
