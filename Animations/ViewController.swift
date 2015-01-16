//
//  ViewController.swift
//  Animations
//
//  Created by Marco F.A. Corzani on 14.01.15.
//  Copyright (c) 2015 Alphaweb. All rights reserved.
//

import UIKit

var buttonLabel: UILabel!

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    
    @IBOutlet weak var phoneImage: UIImageView!
    
    @IBOutlet weak var phoneImage2: UIImageView!
    
    @IBOutlet weak var marcoLabel: UILabel!
   
    @IBOutlet weak var axlLabel: UILabel!
    
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBOutlet weak var buttonLabel: UIButton!
    @IBAction func buttonTitle(sender: UIButton) {
    
    
        println("leck mich")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // create tap gesture recognizer for the first image view
        
        let tapGesture = UITapGestureRecognizer(target: self, action: "tapGesture:")
        
        // add it to the image view;
        phoneImage.addGestureRecognizer(tapGesture)
        // make sure imageView can be interacted with by user
        phoneImage.userInteractionEnabled = true
        
        
        // create tap gesture recognizer for the second image view
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: "tapGesture2:")
        
        // add it to the image view;
        phoneImage2.addGestureRecognizer(tapGesture2)
        // make sure imageView can be interacted with by user
        phoneImage2.userInteractionEnabled = true


        buttonLabel.setTitle("", forState: UIControlState.Normal)
    
    
    
    }

    
    override func viewDidLayoutSubviews() {
        
        marcoLabel.alpha = 0
        axlLabel.alpha = 0
       
        
        phoneImage.center = CGPointMake(phoneImage.center.x - 400, phoneImage.center.y)
        phoneImage2.center = CGPointMake(phoneImage2.center.x - 400, phoneImage2.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(2, delay: 1.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
        self.phoneImage.center = CGPointMake(self.phoneImage.center.x + 400, self.phoneImage.center.y)
        }, completion: nil)
    
        UIView.animateWithDuration(2, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
        self.phoneImage2.center = CGPointMake(self.phoneImage2.center.x + 400, self.phoneImage2.center.y)
        }, completion: nil)
        
        
        
        UIView.animateWithDuration(2.0, delay: 3.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
        self.marcoLabel.alpha = 1.0
        }, completion: nil)
    
        UIView.animateWithDuration(2.0, delay: 2.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
        self.axlLabel.alpha = 1.0
        }, completion: nil)
    
    
    }
    
    
        //tap function for first image view
    
        func tapGesture(gesture: UIGestureRecognizer) {
        
        
        self.phoneImage.image = UIImage(named: "phone_blau.png")
        self.phoneImage2.image = UIImage(named: "phone.png")
        
        
        
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.phoneImage.center = CGPointMake(self.phoneImage.center.x, self.phoneImage.center.y - 100)
            }, completion: {
                (finished: Bool) -> Void in
                
                
                
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.phoneImage.center = CGPointMake(self.phoneImage.center.x, self.phoneImage.center.y + 100)
            }, completion: nil)
        })
         
            println("Weiter mit Marco")
        }
    
       //self.buttonLabel.setTitle("Weiter mit \(self.marcoLabel.text!)", forState: UIControlState.Normal)
    
    

    
    //tap function for second image view
    
    func tapGesture2(gesture: UIGestureRecognizer) {
        
        
        self.phoneImage2.image = UIImage(named: "phone_blau.png")
        self.phoneImage.image = UIImage(named: "phone.png")
        
        
        
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.phoneImage2.center = CGPointMake(self.phoneImage2.center.x , self.phoneImage2.center.y - 100)
            }, completion: {
                (finished: Bool) -> Void in
                
                
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.phoneImage2.center = CGPointMake(self.phoneImage2.center.x, self.phoneImage2.center.y + 100)
            }, completion: nil)
        })
        
            println("weiter mit AxL")
    
    }

}

