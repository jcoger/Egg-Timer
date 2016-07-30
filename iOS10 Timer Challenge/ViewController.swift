//
//  ViewController.swift
//  iOS10 Timer Challenge
//
//  Created by Jarrett Coger on 7/29/16.
//  Copyright © 2016 Jarrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //First we setup a variable using the Swift timer class
    var timer = Timer()
    
    //Next we put a start time of 210 for the egg timer
    var time = 210
    
    
    // We then create a decrease timer function that will subtract 1 from the time.
    func decreaseTimer() {
        
        if time > 0{
        
        time -= 1
        
            
    // Converts the time variable to a string so the time goes down on the timerLabel
        timerLabel.text = String(time)
            
        } else {
            
            
    //Stops the timer when it hits zero
            timer.invalidate()
        }
        
    }
    
    @IBAction func playButton(_ sender: AnyObject) {
    
        
    //This is the swift Timer class that will do something on specified intervals. In this app the decreaseTimer function is running every second (timerInterval: 1) 
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        timer.invalidate()
        
    }

    @IBAction func resetButton(_ sender: AnyObject) {
        
        time = 210
        timerLabel.text = String(time)
        
    }
    
    @IBAction func minusTenButton(_ sender: AnyObject) {
        
    //Use an if so it doesn't make it go to the negatives
        if time > 10 {
        time -= 10
        timerLabel.text = String(time)
            
        }
        
    }
    
    @IBAction func plusTenButton(_ sender: AnyObject) {
        
        time += 10
        timerLabel.text = String(time)
    }
    

    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

