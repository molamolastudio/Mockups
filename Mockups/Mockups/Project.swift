//
//  Project.swift
//  Mockups
//
//  Created by Michelle Tan on 10/3/15.
//  Copyright (c) 2015 Mola Mola Studios. All rights reserved.
//

import Foundation

class Project {
    var name: String
    var animal: String
    var ethogram: String
    var createdTime: NSDate
    var createdUser: String
    var id: String?
    
    init(name: String, animal: String, ethogram: String, createdTime: NSDate, createdUser: String) {
        self.name = name
        self.animal = animal
        self.ethogram = ethogram
        self.createdTime = createdTime
        self.createdUser = createdUser
        self.id = generateProjectId()
    }
    
    func generateProjectId() -> String {
        return Constants.CodePrefixes.project + String(Data.projects.count)
    }
}