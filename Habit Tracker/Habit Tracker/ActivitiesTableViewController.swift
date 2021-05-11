//
//  ActivitiesTableViewController.swift
//  Habit Tracker
//
//  Created by Anika Nair on 4/26/21.
//

import UIKit

class ActivitiesTableViewController: UITableViewController {
    
    
@IBOutlet var ScrollView1: UIScrollView!
    
    var activities = [Activity] ()

      
    override func viewDidLoad() {
    
    navigationItem.leftBarButtonItem = editButtonItem

        super.viewDidLoad()

 if let SavedActivity = Activity.loadSavedActivity() {
        
        activities = SavedActivity
                    }
           else {
            
        activities = Activity.loadSampleActivity()
            
}
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this viewcontroller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
}

   
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return activities.count

    }

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell

{
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Habitcell", for: indexPath)
        
    let Activity = activities[indexPath.row]
        cell.textLabel?.text = Activity.title
        return cell
    
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    if editingStyle == .delete {
        
        activities.remove(at: indexPath.row)
           
    tableView.deleteRows(at: [indexPath], with: .fade)
            
        
    }
        
    }
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 
*/

@IBAction func unwindToHabitTracker(segue: UIStoryboardSegue) {
    
guard segue.identifier == "saveUnwind" else {return}
     
let sourceViewController = segue.source as!
        AddHabitsTableViewController
    
if let Activity = sourceViewController.activities {
    
if let selectedIndexPath =
    tableView.indexPathForSelectedRow {
 activities[selectedIndexPath.row] = Activity
    tableView.reloadRows(at: [selectedIndexPath],
                         with: .none)
         }
    else
{
    let newIndexPath = IndexPath(row: activities.count,
                 section: 1)
        
     activities.append(Activity)
         
 tableView.insertRows(at: [newIndexPath], with: .automatic)
    
         }
}
   
}
    
override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddHabits",
               
    let navController = segue.destination as?
            UINavigationController,
            
    let addHabitsTableViewController =
            navController.topViewController as?
                    
    AddHabitsTableViewController {
        let indexPath = tableView.indexPathForSelectedRow!
        let selectedactivity = activities[indexPath.row]
            
        addHabitsTableViewController.activities = selectedactivity
                
                }
            }
}
    


