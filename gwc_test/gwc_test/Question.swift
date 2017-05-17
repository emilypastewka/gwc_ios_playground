//
//  Question.swift
//  gwc_test
//
//  Created by Emily Bailey on 5/10/17.
//  Copyright © 2017 Emily Bailey. All rights reserved.
//

import UIKit

class Question {
    
    // MARK: Properties
    var questionText: String
    var answerChoices: [String]
    var answerSelection: String
    
    // MARK: Initialization
    
    init(questionText: String, answerChoices: [String], answerSelection: String) {
        // Initialize stored properties.
        self.questionText = questionText
        self.answerChoices = answerChoices
        self.answerSelection = answerSelection
    }
    
}
