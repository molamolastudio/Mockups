//
//  ProjectsViewController.swift
//  Mockups
//
//  Created by Michelle Tan on 10/3/15.
//  Copyright (c) 2015 Mola Mola Studios. All rights reserved.
//

import UIKit

class ProjectsViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    let identifierProjectTableCell = "ProjectTableCell"
    
    let tagCellTitle = 100
    let tagCellSubtitle = 101
    
    let numRowsInSection: [Int] = [10] //[Data.projects.count]
    let numSections = 1
    
    let projectTitles = []
    
    override func viewDidLoad() {
        
    }
    
    // UITableViewDataSource and UITableViewDelegate METHODS
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(identifierProjectTableCell) as UITableViewCell
        
        let title = cell.viewWithTag(tagCellTitle) as UILabel
        let subtitle = cell.viewWithTag(tagCellSubtitle) as UILabel
        let project = Data.projects[indexPath.row]
        
        title.text = project.getDisplayName()
        subtitle.text = project.creator.name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numRowsInSection[section]
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return numSections
    }
}
