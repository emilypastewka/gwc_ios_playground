//
//  QuestionTextView.swift
//  gwc_test
//
//  Created by Emily Bailey on 5/3/17.
//  Copyright © 2017 Emily Bailey. All rights reserved.
//

import UIKit

class QuestionTextView: UITextView {
    
    func readPropertyList(){
        var format = PropertyListSerialization.PropertyListFormat.XMLFormat_v1_0 //format of the property list
        var plistData:[String:AnyObject] = [:]  //our data
        let plistPath:String? = Bundle.mainBundle().pathForResource("data", ofType: "plist")!
        let plistXML = FileManager.defaultManager().contentsAtPath(plistPath!)!
        
        do{
            plistData = try PropertyListSerialization.propertyListWithData(plistXML,
                                                                             options: .MutableContainersAndLeaves,
                                                                             format: &format)
                as! [String:AnyObject]
        }
        catch{
            print("Error reading plist: \(error), format: \(format)")
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
