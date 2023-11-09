//
//  StoryCollectionViewCell.swift
//  Messenger
//
//  Created by Robert on 08.11.23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func getData(model: StoryModel) {
        
        userImage = model.profileImage
        userName.text = model.userName
    }
}
