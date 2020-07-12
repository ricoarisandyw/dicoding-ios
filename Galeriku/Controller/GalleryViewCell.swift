//
//  GalleryViewCell.swift
//  Galeriku
//
//  Created by Rico Arisandy on 6/26/20.
//  Copyright © 2020 Rico Arisandy. All rights reserved.
//

import UIKit

class GalleryViewCell: UITableViewCell {
    @IBOutlet weak var galleryItemTitle: UILabel!
    @IBOutlet weak var galeryItemSubtitle: UILabel!
    @IBOutlet weak var galeryItemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
