//
//  ViewController.swift
//  Multiples-demo
//
//  Created by Faraazuddin Mohammed on 3/6/16.
//  Copyright © 2016 Faraazuddin Mohammed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var logo:UIImageView!
    @IBOutlet weak var multipleTxt:UITextField!
    @IBOutlet weak var playBtn:UIButton!
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    //Properties
    var number:Int = 0
    var prevSum:Int = 0
    var curSum:Int = 0
    var maxSum:Int = 100
    
    @IBAction func playOnBtn(sender:UIButton!){
        if multipleTxt.text != nil && multipleTxt.text != ""{
            logo.hidden = true
            multipleTxt.hidden = true
            playBtn.hidden = true
            
            result.hidden = false
            addBtn.hidden = false
            
            prevSum = 0
            number = Int(multipleTxt.text!)!
            curSum = number
            
            displayResult()
            
        }
    
    }
    
    @IBAction func addPress(sender: UIButton!){
        updateSums();
        displayResult();
    }

    func displayResult(){
        result.text = " \(prevSum) + \(number) = \(curSum)"
    }
    
    func updateSums(){
        prevSum = curSum
        curSum += number
        
        if curSum > maxSum{
            restart()
        }
    }
    
    func restart(){
        
        number = 0
        multipleTxt.text = ""
        
        logo.hidden = false
        multipleTxt.hidden = false
        playBtn.hidden = false
        
        result.hidden = true
        addBtn.hidden = true
        
    }

}

