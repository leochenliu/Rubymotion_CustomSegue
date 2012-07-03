class MySague < UIStoryboardSegue
  attr_accessor :identifier, :sourceViewController, :destinationViewController
  def initWithIdentifier(identifier,source:source,destination:destination)
    puts "MySague .. initWithIdentifier"  
    self.identifier = identifier
    self.sourceViewController= source
    self.destinationViewController = destination
    self
  end
  
  def perform
    puts "MySegue perform "
    s = self.sourceViewController
    d = self.destinationViewController
    d.title = s.source_title
    d.modalPresentationStyle =  UIModalTransitionStyleCrossDissolve;
    s.presentModalViewController(d,animated:false);
  end
  
end