//
//  MiddleVC.swift
//  Order of Events
//
//  Created by juan palacio on 7/18/24.
//

import UIKit

class MiddleVC: UIViewController {
    
    @IBOutlet weak var middleVCLabel: UILabel! // Make sure this is connected in the storyboard
    
    var eventNumber: Int = 1
    
    // Method to update the label for a given event
    func addEvent(from: String) {
        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
           // Set initial text
            print("viewDidLoad called") // Debug print statement
            addEvent(from: "viewDidLoad")
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("viewWillAppear called") // Debug print statement
            addEvent(from: "viewWillAppear")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("viewDidAppear called") // Debug print statement
            addEvent(from: "viewDidAppear")
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            print("viewWillDisappear called") // Debug print statement
            addEvent(from: "viewWillDisappear")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            print("viewDidDisappear called") // Debug print statement
            addEvent(from: "viewDidDisappear")
        }
    }
