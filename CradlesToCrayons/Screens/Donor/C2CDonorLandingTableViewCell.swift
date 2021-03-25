//
//  C2CDonorLandingTableViewCell.swift
//  CradlesToCrayons
//
//  Created by Arun on 3/25/21.
//

import UIKit

class C2CDonorLandingTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellImageView.layer.cornerRadius = frame.size.width/2.0
        cellImageView.backgroundColor = .lightGray
    }

}
