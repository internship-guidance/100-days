# ShoppingList
**create an app that lets people create a shopping list by adding items to a table view.**

##Preconditions:
*  Use a UIAlertController with a text field to let users enter free text that got appended to the array.
*  If users enter some text, assume it’s a real product and add it to their 

##Hints
*  change ViewController to build on UITableViewController, then change the storyboard to match.
*  Create a shoppingList property of type [String] to hold all the items the user wants to buy.
*  Create your UIAlertController with the style .alert, then call addTextField() to let the user enter text.
*  When you have a new shopping list item, make sure you insert() it into your shoppingList array before you call the insertRows(at:) method of your table view – your app will crash if you do this the wrong way around.

##Recources
*  https://www.hackingwithswift.com/guide/3/3/challenge
