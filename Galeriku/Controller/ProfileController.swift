//
//  ProfileController.swift
//  Galeriku
//
//  Created by Rico Arisandy on 6/26/20.
//  Copyright © 2020 Rico Arisandy. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    var hero: Gallery?

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Digunakan untuk menetapkan nilai hero ke beberapa view yang ada
        if let result = hero {
            labelTitle.text = result.title
            labelSubtitle.text = result.subtitle
            imageDetail.image = UIImage(named: "user-o")!
        }
        
        imageDetail.layer.cornerRadius = imageDetail.frame.height / 2
        imageDetail.clipsToBounds = true
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
