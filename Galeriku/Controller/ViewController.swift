//
//  ViewController.swift
//  Galeriku
//
//  Created by Rico Arisandy on 6/26/20.
//  Copyright © 2020 Rico Arisandy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listGalleryView: UITableView!
    @IBOutlet weak var iconProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Pemandangan Indonesia"
    
        listGalleryView.delegate = self
        
        listGalleryView.dataSource = self
        
        listGalleryView.register(UINib(nibName: "GalleryViewCell", bundle: nil), forCellReuseIdentifier: "GalleryCell")

        //Add Profil Icon Image clicked listener
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        iconProfile.isUserInteractionEnabled = true
        iconProfile.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView

        // Your action
        let detail = ProfileController(nibName: "ProfileController", bundle: nil)

        self.navigationController?.pushViewController(detail, animated: true)
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return galleries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GalleryCell",for: indexPath) as! GalleryViewCell
        // Menetapkan nilai hero ke view di dalam cell
        let gallery = galleries[indexPath.row]
        cell.galleryItemTitle.text = gallery.title
        cell.galeryItemSubtitle.text = gallery.subtitle
        cell.galeryItemImage.image = gallery.image
        
        return cell
    }
}

extension ViewController: UITableViewDelegate{
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas NIB/XIB di dalamnya
        let detail = DetailController(nibName: "DetailController", bundle: nil)
        
        // Mengirim data hero
        detail.gallery = galleries[indexPath.row]
        
        // Push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
