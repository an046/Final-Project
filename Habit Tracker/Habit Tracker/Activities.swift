//
//  Activities.swift
//  Habit Tracker
//
//  Created by Anika Nair on 4/26/21.
//

import UIKit

struct Activity:Codable {

var title:String
var description:String
var count : Int
    
static let DocumentsDirectory =
FileManager.default.urls(for: .documentDirectory,
in: .userDomainMask).first!
static let ArchiveURL =
DocumentsDirectory.appendingPathComponent("Activities")
       .appendingPathExtension("plist")
    
    
static func loadSavedActivity() -> [Activity]?  {
    
guard let codedActivities = try? Data(contentsOf: ArchiveURL)
          else {return nil}
    
let propertyListDecoder = PropertyListDecoder()
return try? propertyListDecoder.decode(Array<Activity>.self,
                from: codedActivities)
}
            
static func loadSampleActivity() -> [Activity] {
    
let habit1 = Activity(title: "Go to bed by 11pm", description: "Make sure to get atleast 8 hr of sleep", count: 0);
                        
let habit2 = Activity(title: "Drink atleast 8 Glasses of Water", description: "Stay Hydrated", count: 0);
                               
let habit3 = Activity(title: "Eat a Healthy Snack ",description: "yumm !!!!" , count: 0 );
                               
let habit4 = Activity(title: "Stand up every Hour", description: "Its good for your health", count: 0);
    
let habit5 = Activity(title: "WorkOut", description: "Lets get the blood flowing ", count: 0)
    
                 return [habit1, habit2, habit3, habit4, habit5]
    }
}

    
    
    


    

