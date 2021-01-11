class MyViewController < UIViewController

  def viewDidLoad
    super
    self.title = 'Vista'
  end

  def loadView
    super
    view.backgroundColor = UIColor.whiteColor
    loadButton
  end

  def loadButton
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle('Push', forState: UIControlStateNormal)
    button.frame = CGRect.new([100, 100], [100, 40])
    view.addSubview(button)

    button.addTarget(self, action: 'pushView', forControlEvents: UIControlEventTouchUpInside)
  end

  def pushView
    @other_view_controller = OtherViewController.alloc.initWithNibName(nil, bundle: nil)
    navigationController.pushViewController(@other_view_controller, animated: true)
  end
end
