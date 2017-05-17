//
//  AnswerControl.swift
//  gwc_test
//
//  Created by Emily Bailey on 5/10/17.
//  Copyright © 2017 Emily Bailey. All rights reserved.
//

import UIKit

@IBDesignable class AnswerControl: UIStackView {
    
    //MARK: Properties
    
    
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        // Clear any existing buttons
        
        // Load Button Images
        
        ///////// for each
        
        // Create the button
        let button = UIButton()
        
        // Set the button images
        
        // Add constraints
        
        // Setup the button action
        
        // Add the button to the stack
        
        // Add the new button to the button array
        
    }
    
    private func updateButtonSelectionStates() {
    }

}
