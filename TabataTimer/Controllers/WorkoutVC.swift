//
//  ViewController.swift
//  TabataTimer
//
//  Created by Fred Lefevre on 2020-02-15.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import UIKit
import Intents

class WorkoutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleSiriRequest), name: NSNotification.Name("workoutStartedNotification"), object: nil)
        
        INPreferences.requestSiriAuthorization { (status) in
            if status == .authorized {
                print("Siri authorized")
            } else {
                print("Siri not authorized ☹️")
            }
        }
    }
    
    @objc func handleSiriRequest() {
        guard let startWorkoutIntent = DataService.shared.startWorkoutIntent else {
            return
        }
        
        print(startWorkoutIntent)
    }
    

}

