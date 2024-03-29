//
//  StoryboardTableViewCell.swift
//  DemoTableView
//
//  Created by Din Din on 18/03/2024.
//

import UIKit


class StoryboardTableViewCell: UITableViewCell {


    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblPhoneNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func fillData(item: Contact) {
        lblName.text = item.name
        lblPhoneNumber.text = "\(item.phone ?? 0)"
    }
    
}
