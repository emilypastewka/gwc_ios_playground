//
//  QuestionViewController.swift
//  gwc_test
//
//  Created by Emily Bailey on 5/3/17.
//  Copyright © 2017 Emily Bailey. All rights reserved.
//

import UIKit

class QuestionViewController: UITableViewController {

     //MARK: Properties
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Do other work
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table view data source
    
    let emotionsArray = ["How do you feel right now?"]
    
    let activitiesArray = ["What did you do today?","Who did you enjoy spending time with today?"]
    
    var questionsArray: [[String]] = [[]]
    
    let emotionsAnswersArray = [["😍","😀","🙂","🙄","🤢","☹️","😭","😡"]]
    
    let activitiesAnswersArray = [["⛵️","⚽️","📚"],["Family","Friends","Myself"]]

    //MARK: TableView methods
    
    // gives N sections in tableview
    override func numberOfSections(in tableView: UITableView) -> Int {
        
    }
    
    // gives N rows per table section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    }
    
    // Names each section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
    }
    
    // returns a cell for the tableview
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
