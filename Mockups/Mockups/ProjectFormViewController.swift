//
//  ProjectFormViewController.swift
//  Mockups
//
//  Created by Michelle Tan on 10/3/15.
//  Copyright (c) 2015 Mola Mola Studios. All rights reserved.
//

import UIKit

class ProjectFormViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let table = UITableViewController()
    
    let cellReuseIdentifier = ""
    let numRows = 9
    
    var nav = UINavigationController()
    
    var isTableEditable = false
    
    var cellTypes: [Constants.CellType] = []
    
    override func viewDidLoad() {
        nav = UINavigationController(rootViewController: table)
        addNewChildController(nav)
    }
    
    // Adds the given controller as a child of this view controller.
    // Adds the controller's views as subviews of this controller's view.
    func addNewChildController(controller: UIViewController) {
        self.addChildViewController(controller)
        self.view.addSubview(controller.view)
        controller.didMoveToParentViewController(self)
    }
    
    // UITableViewDataSource and UITableViewDelegate METHODS
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier) as UITableViewCell
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return isTableEditable
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numRows
    }

}
