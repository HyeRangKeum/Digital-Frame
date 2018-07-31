//
//  ViewController.swift
//  Digital Frame
//
//  Created by specupad on 2018. 7. 31..
//  Copyright © 2018년 hyerang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLable:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [
                        UIImage(named:"0.jpg")!,
                        UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!
                          /*UIImage(named:"8.JPG")!,
                         UIImage(named:"9.JPG")!,
                          UIImage(named:"10.JPG")!,
                          UIImage(named:"11.JPG")!,
                          UIImage(named:"12.JPG")!,
                          UIImage(named:"13.JPG")!,
                          UIImage(named:"14.JPG")!,
                          UIImage(named:"15.JPG")!*/
                          ]
        imgView.animationImages = cuteImages
       speedLable.text = String(format:"%.2f",speedSlider.value)
    }
    @IBAction func toggleButton(_ sender: Any) {
    
        
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for:UIControlState.normal)
        }else{
                imgView.animationDuration = Double(speedSlider.value)
               imgView.startAnimating()
            toggleButton.setTitle("Stop", for:UIControlState.normal)
    }
    }
    
    
    //var i = 0
    
    
    @IBAction func speedSliderAction(_ sender:Any){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
         toggleButton.setTitle("Stop", for:UIControlState.normal)
        speedLable.text = String(format:"%.2f",speedSlider.value)
    //print("speedSliderAction\(i)")
      //  i += 1
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

