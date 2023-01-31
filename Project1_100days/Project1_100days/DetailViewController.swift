//
//  DetailViewController.swift
//  Project1_100days
//
//  Created by user226947 on 12/8/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    var selectedImage: String?
    var currentPos: Int?
    var total: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //if let selectedImageUW = selectedImage else print("Missing name.")}
        
        let selectedImageUW = selectedImage ?? ""
        let currentPosUW = currentPos ?? 0
        let totalUW = total ?? 0
        
        title = selectedImageUW + "; image \(currentPosUW) of \(totalUW)"
        navigationItem.largeTitleDisplayMode = .never
        
        /* navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped)) */
        
        if let imageToLoad = selectedImage {
            ImageView.image = UIImage(named: imageToLoad)
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
        
    }
    
    /* @objc func shareTapped() {
        guard let image = ImageView.image?.jpegData(compressionQuality: 0.8)  else {
            print("No image")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem  = navigationItem.rightBarButtonItem
        
        present(vc, animated: true)
    } */
}

