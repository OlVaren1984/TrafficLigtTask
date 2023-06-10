//
//  ViewController.swift
//  TrafficLightTask
//
//  Created by Олег Варенников  on 30.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLight: UIStackView!
    @IBOutlet var yellowTrafficLight: UIStackView!
    @IBOutlet var greenTrafficLight: UIStackView!
    
    @IBOutlet var nextButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.alpha = lightIsOff
        yellowTrafficLight.alpha = lightIsOff
        greenTrafficLight.alpha = lightIsOff
        
        
        TrafficLightNextButton()
        TrafficLightRoundingFunction()
        TrafficLightBorderColor()
        
        
    }
    
    func TrafficLightRoundingFunction()  {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.size.height / 2
        
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.size.height / 2
        
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.size.height / 2
        
    }
    
    func TrafficLightBorderColor() {
        redTrafficLight.layer.borderWidth = 2
        redTrafficLight.layer.borderColor = UIColor.red.cgColor
        
        yellowTrafficLight.layer.borderWidth = 2
        yellowTrafficLight.layer.borderColor = UIColor.yellow.cgColor
        
        greenTrafficLight.layer.borderWidth = 2
        greenTrafficLight.layer.borderColor = UIColor.green.cgColor
    }
    
    func TrafficLightNextButton()  {
        nextButton.layer.cornerRadius = 10
        nextButton.layer.borderWidth = 2
        nextButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func NextButton() {
        
        if redTrafficLight.alpha  == lightIsOn {
            yellowTrafficLight.alpha = lightIsOn
            greenTrafficLight.alpha =  lightIsOff
            redTrafficLight.alpha  = lightIsOff
            
        } else {
            
            if  yellowTrafficLight.alpha  == lightIsOn {
                redTrafficLight.alpha = lightIsOff
                greenTrafficLight.alpha =  lightIsOn
                yellowTrafficLight.alpha =  lightIsOff
                
            } else {
                
                if greenTrafficLight.alpha  == lightIsOn {
                    redTrafficLight.alpha  = lightIsOn // переключение без паузы
                    // redTrafficLight.alpha = lightIsOff // переключение с паузой
                    yellowTrafficLight.alpha =  lightIsOff
                    greenTrafficLight.alpha  = lightIsOff
                } else {
                    redTrafficLight.alpha  = lightIsOn
                }
            }
            
        }
    }
}


