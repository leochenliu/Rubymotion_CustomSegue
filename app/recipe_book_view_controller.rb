class RecipeBookViewController < UITableViewController
    attr_accessor :source_title
    CELLID='drink'
    def viewDidLoad
      puts "RecipeBookViewController"
      @Drinks = ['coffee','tea','juice']
    end
    
    def numberOfSectionsInTableView(tableView)
      1  
    end
     
    def tableView(tableView, numberOfRowsInSection:section)
      @Drinks.length
    end
    
    def tableView(tableView, cellForRowAtIndexPath:indexPath)
      cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
        cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
        cell.selectionStyle = UITableViewCellSelectionStyleBlue
        cell
      end

      # cell.textLabel.font = UIFont.fontWithName(font_name, size:18)
      cell.textLabel.text = @Drinks[indexPath.row]
      cell
    end
    
    def tableView(tableView, didSelectRowAtIndexPath:indexPath)
      puts "clicking....#{indexPath.row}"
      self.source_title = @Drinks[indexPath.row]
      self.performSegueWithIdentifier("showRecipeDetail",sender:self)
      puts "end of perform segue"
    end 
    
    def prepareForSegue(sague,sender:sender)
      puts "prepareforsegue in receiptbook view contorller"

    end
end
