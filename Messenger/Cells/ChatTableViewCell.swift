//
//  ChatTableViewCell.swift
//  Messenger
//
//  Created by Robert on 09.11.23.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func getData(model: MessageModel) {
        
        model.isSended ? (viewBackground.tintColor = UIColor(named: "Blue")): (viewBackground.tintColor = UIColor(named: "Gray"))
        messageLabel.text = model.message
    }
}
