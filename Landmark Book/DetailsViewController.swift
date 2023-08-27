//
//  DetailsViewController.swift
//  Landmark Book
//
//  Created by Görkem Güray on 15.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var landmarkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
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
