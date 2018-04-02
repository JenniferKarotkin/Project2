//
//  ViewController.swift
//  QuizApp
//
//  Created by Karotkin, Jennifer L on 3/29/18.
//  Copyright © 2018 Karotkin, Jennifer L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var extroverted:Int = 0
    var introverted:Int = 0
    var independent:Int = 0
    var clingy:Int = 0
    var energetic:Int = 0
    var lazy:Int = 0
    var total:Int = 0
    
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myGreeting: UILabel!
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func myButton(_ sender: Any) {
        let name = myName.text!
        myGreeting.text = "Are You A Dog Or Cat Person, \(name)?"
        
        myName.resignFirstResponder()

    }
    
    @IBAction func mySubmit(_ sender: Any) {
      
        total = extroverted + introverted + independent + clingy + energetic + lazy
        
        if(total >= 3 && total <= 4) {
            myTotal.text = "You Are A Dog Person!"
            myImage.image = UIImage(named: "dog")
        }
        else if(total >= 5 && total <= 6) {
            myTotal.text = "You are a cat person!"
            myImage.image = UIImage(named: "cat")
        }
        else {
            myTotal.text = "You may only choose one answer from each question."
            myImage.image = UIImage(named: "grumpycat")
        }

        
        

        
    }
    
    
    
    
    
    
    @IBAction func selectExtroverted(_ sender: UISwitch) {
        if sender.isOn {
            extroverted = 1
        }
        else {
            extroverted = 0
        }
    }
    
    @IBAction func selectIntroverted(_ sender: UISwitch) {
        if sender.isOn {
            introverted = 2
        }
        else {
            introverted = 0
        }
    }
    
    @IBAction func selectIndependent(_ sender: UISwitch) {
        if sender.isOn {
            independent = 2
        }
        else {
            independent = 0
        }
    }
    
    @IBAction func selectClingy(_ sender: UISwitch) {
        if sender.isOn {
            clingy = 1
        }
        else {
            clingy = 0
        }
    }
    
    @IBAction func selectEnergetic(_ sender: UISwitch) {
        if sender.isOn {
            energetic = 1
        }
        else {
            energetic = 0
        }
    }
    
    @IBAction func selectLazy(_ sender: UISwitch) {
        if sender.isOn {
            lazy = 2
        }
        else {
            lazy = 2
        }
    }
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

