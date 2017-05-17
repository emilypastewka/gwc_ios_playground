//
//  QuestionCell\.swift
//  gwc_test
//
//  Created by Emily Bailey on 5/10/17.
//  Copyright © 2017 Emily Bailey. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerChoices: AnswerControl!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
