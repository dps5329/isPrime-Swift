//
//  ViewController.swift
//  isPrime
//
//  Created by Daniel Schartner on 6/3/15.
//  Copyright (c) 2015 Daniel Schartner. All rights reserved.
//

import UIKit

//function to check if a number is prime
func isPrime(checkNum: Int) -> Bool{
    //if the number is divisible by 2 or 3, unless it's 2 or 3, it is not prime
    if(checkNum%2 == 0 || checkNum%3 == 0){
        if(checkNum == 2 || checkNum == 3){
            return(true)
        }
        return(false)
    }
    else{
        //if the number is less than or equal to 1, we'll say it's not prime
        if(checkNum <= 1){
            return(false)
        }
        
        //now go through every number from 4 to 1/2 of the number to make sure nothing divides evenly
        for(var i = 4; i <= checkNum/2; i++){
            if(checkNum%i == 0){
                return(false)
            }
        }
    }
    
    //after all that the number must be prime
    return(true)
}


class ViewController: UIViewController {

    //setup connections to UI elements
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var outputText: UILabel!
    
    //When the button is pressed check if the entered number is prime
    @IBAction func checkPrime(sender: AnyObject) {
        var num = userInput.text
        
        //make sure there is input
        if(num != ""){
            var intNum = num.toInt()
            if(isPrime(intNum!)){
                outputText.text = "Yes, the number is prime"
            }
            else{
                outputText.text = "No, the number is not prime"
            }
        }
    }
    
    //reset stuff
    @IBAction func deleteText(sender: AnyObject) {
        outputText.text = ""
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

