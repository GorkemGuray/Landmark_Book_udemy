//
//  ViewController.swift
//  Landmark Book
//
//  Created by Görkem Güray on 13.08.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var landmarkNames = ["Colosseum", "Great Wall", "Kremlin", "Stonehenge", "Taj Mahal"]
    var landmarkImages = [UIImage] ()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenIndexPath = 0
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
        
        
        landmarkImages.append(UIImage(named: "collosseum")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "stonehenge")!)
        landmarkImages.append(UIImage(named: "tajmahal")!)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        
        cell.contentConfiguration = content
        
        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetalisVC" {
            
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedLandmarkName = landmarkNames[chosenIndexPath]
            destinationVC.selectedLandmarkImage = landmarkImages[chosenIndexPath]
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        chosenIndexPath = indexPath.row
        print(indexPath.row)
        print(landmarkNames[indexPath.row])
        performSegue(withIdentifier: "toDetalisVC", sender: nil)
        
    }
    
 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        

    
    }

    
    


}

