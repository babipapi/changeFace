//
//  ViewController.swift
//  changeFace
//
//  Created by Daniel on 2020/3/13.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var random: UISwitch!
    @IBOutlet weak var glassesSwitch: UISwitch!
    @IBOutlet weak var sexSegment: UISegmentedControl!
    @IBOutlet weak var faceSegment: UISegmentedControl!
    @IBOutlet weak var bodySegment: UISegmentedControl!
    @IBOutlet weak var bodyImageView: UIImageView!
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var glassesImageView: UIImageView!

    let faceImageArray = ["face0","face1","face2","face3"]
    let bodyImageArray = ["body0","body1","body2","body3"]
    let sexImageArray = ["sex0","sex1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        random.isOn = false
    }
    @IBAction func glassesOnOff(_ sender: UISwitch) {
        if glassesSwitch.isOn{
            glassesImageView.image = UIImage(named: "glasses")
        }else{
            glassesImageView.image = nil
        }
    }
    @IBAction func sexChange(_ sender: UISegmentedControl) {
        if sexSegment.selectedSegmentIndex == 0{
            headImageView.image = UIImage(named: "sex0")
        }else{
            headImageView.image = UIImage(named: "sex1")
        }
    }
    @IBAction func faceChange(_ sender: UISegmentedControl) {
        if faceSegment.selectedSegmentIndex == 0{
            faceImageView.image = UIImage(named: "face0")
        }else if faceSegment.selectedSegmentIndex == 1 {
            faceImageView.image = UIImage(named: "face1")
        }else if faceSegment.selectedSegmentIndex == 2 {
            faceImageView.image = UIImage(named: "face2")
        }else if faceSegment.selectedSegmentIndex == 3 {
            faceImageView.image = UIImage(named: "face3")
        }
    }
    @IBAction func bodyChange(_ sender: UISegmentedControl) {
        if bodySegment.selectedSegmentIndex == 0{
            bodyImageView.image = UIImage(named: "body0")
        }else if bodySegment.selectedSegmentIndex == 1 {
            bodyImageView.image = UIImage(named: "body1")
        }else if bodySegment.selectedSegmentIndex == 2 {
            bodyImageView.image = UIImage(named: "body2")
        }else if bodySegment.selectedSegmentIndex == 3 {
            bodyImageView.image = UIImage(named: "body3")
        }
    }
    @IBAction func random(_ sender: UISwitch) {
        if random.isOn{
            let x = Int.random(in: 0...3)
            let y = Int.random(in: 0...3)
            let z = Int.random(in: 0...1)
            faceSegment.selectedSegmentIndex = x
            faceImageView.image = UIImage(named: faceImageArray[x])
            bodySegment.selectedSegmentIndex = y
            bodyImageView.image = UIImage(named: bodyImageArray[y])
            sexSegment.selectedSegmentIndex = z
            headImageView.image = UIImage(named: sexImageArray[z])
        }
    }
    
}

