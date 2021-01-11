class OtherViewController < UIViewController

  def viewDidLoad
    super
    self.title = 'Otro'
  end

  def loadView
    super
    view.backgroundColor = UIColor.redColor
  end
end
