//
//  StartViewController.swift
//  Mockups
//
//  Created by Michelle Tan on 2/3/15.
//  Copyright (c) 2015 Mola Mola Studios. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var displayProject: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnAllProjects: UIButton!
    @IBOutlet weak var btnCreateProject: UIButton!
    
    let messageNoProjects = "You don't have any projects."
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        refreshView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // Changes the visibility of UI elements based on state variables.
    func refreshView() {
        if Data.isLoggedIn {
            btnLogin.hidden = true
        } else {
            btnLogin.hidden = false
        }
        
        // There is a project currently selected
        if let project = Data.selectedProject {
            displayProject.text = project.getDisplayName()
        } else {
            // Else, show the appropriate text.
            displayProject.text = messageNoProjects
        }
    }
}

