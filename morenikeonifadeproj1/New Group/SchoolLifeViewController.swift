//
//  SchoolLifeViewController.swift
//  morenikeonifadeproj1
//
//  Created by User on 2/21/23.
//

import UIKit

class SchoolLifeViewController: UIViewController {
    var details: Details?
    
    @IBOutlet weak var paragraph: UITextView!
    @IBOutlet weak var picture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let details = details{
            paragraph.text = details.text
            picture.image = details.photo
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
