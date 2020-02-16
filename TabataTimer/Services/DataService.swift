//
//  DataService.swift
//  TabataTimer
//
//  Created by Fred Lefevre on 2020-02-15.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import Foundation
import Intents

class DataService {
    
    static let shared = DataService()
    
    var startWorkoutIntent: INStartWorkoutIntent?
    private init() {}
}
