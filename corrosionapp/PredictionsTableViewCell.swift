//
//  PredictionsTableViewCell.swift
//  S3TransferManagerSampleSwift
//
//  Created by Jeremy Molayem on 1/8/16.
//  Copyright © 2016 Amazon Web Services. All rights reserved.
//

import UIKit

class PredictionsTableViewCell: UITableViewCell {

    @IBOutlet weak var probabilityLabel: UILabel!
    @IBOutlet weak var classNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(cellData:Dictionary<String, AnyObject>) {
        self.probabilityLabel.text = String(format: "%.2f", arguments: [((cellData["prob"] as? NSNumber)?.floatValue)!])
        self.classNameLabel.text = cellData["class_name"] as? String
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.probabilityLabel.text = ""
        self.classNameLabel.text = ""
    }
}
