//
//  IntentHandler.swift
//  IntentHandler
//
//  Created by Fred Lefevre on 2020-02-15.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import Intents

class IntentHandler: INExtension, INStartWorkoutIntentHandling {
    
    
    func handle(intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void) {
        print("Start workout intent: ", intent)
        
        let userActivity: NSUserActivity? = nil
        
        guard let spokenPhrase = intent.workoutName?.spokenPhrase else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
            return
        }
        
        if spokenPhrase == "highintensityintervaltraining" {
            completion(INStartWorkoutIntentResponse(code: .handleInApp, userActivity: userActivity))
        } else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
        }
        
    }
    
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.

        return self
    }
    
}
