//
//  RailViewController.swift
//  Random Trick Generator
//
//  Created by Kevin Weinhold on 3/21/21.
//

import Foundation
import UIKit


class RailViewController : UIViewController{

    
    // storyboard variables
    @IBOutlet weak var fsbsLabel: UILabel!
    @IBOutlet weak var trickNameLabel: UILabel!
    @IBOutlet weak var newTrickButton: UIButton!
    @IBOutlet weak var difficultySlider: UISlider!
    @IBOutlet weak var difficultyLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newTrickButton.backgroundColor = .clear
        newTrickButton.layer.cornerRadius = 5
        newTrickButton.layer.borderWidth = 1
        newTrickButton.layer.borderColor = UIColor.black.cgColor
        newTrickButton.frame.size = CGSize(width: 10, height: 10)
    }
    
    //storyboard functionality
    
    @IBAction func newTrickButtonWasTapped(_ sender: Any) {
        
        var fsBsNumber : Int = Int.random(in: 0...1)
        var trickNumber : Int = Int.random(in: 0...trickList.count-1)
        
        trickNameLabel.text = trickList[trickNumber]
        fsbsLabel.text = fsBsList[fsBsNumber]
        
    }
    
    
    @IBAction func difficultySliderChanged(_ sender: Any) {
        
        
    }
    
    
    
    
    
}
