//
//  ContactTableViewCell.swift
//  Hello World
//
//  Created by PaingHtet on 19/06/2025.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    var contact: Contact? {
        didSet {
            if let contact = contact {
                nameLabel.text = contact.name
                phoneLabel.text = contact.phone
            }
        }
    }
    
    static let IDENtIFIER = "ContactTableViewCell_ID"
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
