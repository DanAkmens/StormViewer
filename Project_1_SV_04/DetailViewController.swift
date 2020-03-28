//
//  DetailViewController.swift
//  Project_1_SV_04
//
//  Created by Dainis Putans on 26/03/2020.
//  Copyright © 2020 Dainis Putans. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    var selectedPictureNumbers = 0
    var totalPictures = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
        
        guard let imageToLoad = selectedImage else { return }
        
        imageView.image = UIImage(named: imageToLoad)
        
        title = selectedImage
    }
    
    // this code is ressponsible for full screen on tap
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
