//
//  DetailController.swift
//  Galeriku
//
//  Created by Rico Arisandy on 6/26/20.
//  Copyright © 2020 Rico Arisandy. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var topLabelDetail: UILabel!
    
    var gallery: Gallery?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Digunakan untuk menetapkan nilai hero ke beberapa view yang ada
        if let result = gallery {
            photoImage.image = result.image
            topLabelDetail.text = result.title
            labelDetail.text = result.subtitle
        }
        // Do any additional setup after loading the view.
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
