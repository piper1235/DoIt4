//
//  CreateTaskViewController.swift
//  DoIt4
//
//  Created by Tony on 7/16/17.
//  Copyright © 2017 Tony. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var ImportantSwitch: UISwitch!
    @IBOutlet weak var TaskNameTextField: UITextField!
    
    var PreviousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        
        // Create a task from the outlet information
        
        let task = Task()
        task.name = TaskNameTextField.text!
        task.important = ImportantSwitch.isOn
        
        // Add new task to array in previous viewController
        PreviousVC.tasks.append(task)
        
        
    }
    
    
}
