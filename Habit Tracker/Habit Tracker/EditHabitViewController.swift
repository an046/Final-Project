//
//  EditHabitViewController.swift
//  Habit Tracker
//
//  Created by Anika Nair on 4/27/21.
//

import UIKit

class  EditHabitViewController: UIViewController  {

var counter = 0

@IBOutlet var HabitDescriptionLabel: UILabel!
    
@IBOutlet var CompletionCountLabel: UILabel!
    
@IBOutlet var IncreaseCountLabel: UIButton!
    
@IBOutlet var DescriptionLabel: UILabel!
    
@IBOutlet var CountNumberLabel: UILabel!

    
var activities:[Activity] = [
    
Activity(title:"Go to bed by 11pm",
          description:"Get atleast 8 hr of sleep",
          count: 0),
                       
Activity(title:"Drink 8 Glasses of Water",
          description:"Stay Hydrated",
            count: 0),
                       
Activity(title: "Eat a Healthy Snack ",
          description:"yumm !!!!" ,
            count: 0),

Activity(title:"Stand up every Hour",
          description:"Its good for your health",
            count: 0),
    
Activity(title: "WorkOut",
         description: "Lets get the blood flowing ",
         count: 0),
    
]
  
    
var activitiesIndex = 0
        
override func viewDidLoad() {
    
super.viewDidLoad()
    
    updateUI()
}
    
func updateUI () {
    
navigationItem.title = (activities[activitiesIndex.self].title)
    
let currentHabit = (activities[self.activitiesIndex].description)
    
        
DescriptionLabel.text = currentHabit

}
    
@IBAction func ButtonPressed(_ sender: Any) {
    counter += 1
    
CountNumberLabel.text = String(counter)
    
}
   
}

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


/*
 var Details:[Activity] = [
         
 Activity (title:"Go to bed by 11pm",
           description: "Make sure to get atleast 8 hr of sleep",
           count: 0),
         
 Activity (title:"Drink atleast 8 Glasses of Water",
           description: "Stay Hydrated",
           count: 0),
         
 Activity (title: "Eat a Healthy Snack ",
           description: "yumm !!!!" ,
           count: 0 ),

 Activity (title:"Stand up every Hour",
           description: "Its good for your health",
           count: 0),
 
 DescriptionLabel.text = (Activitydetails.description)
 
 var Details  = [
   "Make sure to get atleast 8 hr of sleep",
   "Stay Hydrated",
   "yumm !!!!",
   "Its good for your health"
]
   
/*var Description: [Activities]
 
 var counter = 0
 var descriptionIndex = 0
 
 let description1 = "Make sure to get atleast 8 hr of sleep"
     
 let description2 = "Stay Hydrated"
     
 let description3 =  "yumm !!!!"
     
 let description4  = "Its good for your health"
 
 
 let currentDescription = Details[detailIndex]
 let CurrentTitle = Details[titleIndex]
 
 
 */*/
