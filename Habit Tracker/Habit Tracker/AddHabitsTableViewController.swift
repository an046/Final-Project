//
//  AddHabitsTableViewController.swift
//  Habit Tracker
//
//  Created by Anika Nair on 4/26/21.
//

import UIKit

class AddHabitsTableViewController: UITableViewController {
    
@IBOutlet var ActivityTextField: UITextField!
    
@IBOutlet var DescriptionTextField: UITextField!
    
@IBOutlet var SaveButton: UIBarButtonItem!
    
    
func updateSaveButtonState() {
    
let text = ActivityTextField.text ?? "" ; DescriptionTextField.text ?? ""
    SaveButton.isEnabled = !text.isEmpty
}

override func viewDidLoad(){
 super.viewDidLoad()
    }

    
@IBAction func ActivitytextEditingChanged(_ sender:UITextField) {
    updateSaveButtonState()
    }
    
    
var activities:Activity?
    
override func prepare(for segue: UIStoryboardSegue, sender:
Any?) {
       super.prepare(for: segue, sender: sender)
    
    guard segue.identifier == "saveUnwind" else { return }
    
    let title = ActivityTextField.text!
    let description = DescriptionTextField.text!

    activities = Activity(title:title, description:description, count:0)
}
    
}
    

  





        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
      // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
 
 }
*/*/



