//
//  ViewController.swift
//  morenikeonifadeproj1
//
//  Created by User on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    let schoolButton = Details(text: "I am a senior Computer Science Major at Howard University in Washington DC. I will be graduating in May 2023 and I am planning to go into UX Design post-graduation.", photo: UIImage(named: "Screen Shot 2023-03-02 at 4.34.27 PM"))
    let fromButton = Details(text: "I was born and raised in Prince George's County Maryland but my family and I are from Nigeria. We are of the Yoruba tribe. My mom is from Lagos and my dad is from Osun State.", photo: UIImage(named: "images"))
    let funButton = Details(text: "A fun fact about me is that recently I got into collecting vinyl records. I got a turntable for Christmas last year and have been collecting records for a couple months now. My favorite records as of right now are Blonde- Frank Ocean, and the Best of Sade- Sade.", photo: UIImage(named: "s-l1600"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        performSegue(withIdentifier: "schoolSegue", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "schoolSegue",
           let button = sender as? UIButton,
           let schoolLifeViewController = segue.destination as? SchoolLifeViewController{
            if button.tag == 0{
                schoolLifeViewController.details = schoolButton
            }
            else{
                if button.tag == 1{
                    schoolLifeViewController.details = fromButton
                }
                else{
                    if button.tag == 2{
                        schoolLifeViewController.details = funButton
                    }
                }
                print("No Selection Made")
            }
        }
        }
    
}


