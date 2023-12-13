//
//  MessageTableViewCell.swift
//  Messenger
//
//  Created by Robert on 08.11.23.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var lastMessage: UILabel!
    @IBOutlet weak var lastMessageTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func getData(model: ChatModel) {
        
        userImage = model.profileImage
        profileName.text = model.userName
        lastMessage.text = model.lastMessage
        lastMessageTime.text = model.lastMessageTime
    }
}
