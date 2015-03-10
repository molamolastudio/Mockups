//
//  Session.swift
//  Mockups
//
//  Created by Michelle Tan on 10/3/15.
//  Copyright (c) 2015 Mola Mola Studios. All rights reserved.
//

import Foundation

class Session {
    var project: Project
    var observations: [Observation] = []
    
    init(project: Project) {
        self.project = project
    }
}