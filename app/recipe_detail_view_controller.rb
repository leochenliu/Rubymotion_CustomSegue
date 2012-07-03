class RecipeDetailViewControllerViewController < UIViewController
  attr_accessor :title, :recipeLabel, :delegate
  def viewDidLoad
    puts "view did load in RecipeDetailViewController"
    recipeLabel.text = title
  end
  
end