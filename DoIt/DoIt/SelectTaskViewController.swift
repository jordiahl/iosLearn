//
//  SelectTaskViewController.swift
//  DoIt
//
//  Created by theBeast on 4/5/17.
//  Copyright © 2017 theBeast. All rights reserved.
//

import UIKit

class SelectTaskViewController: UIViewController {

    @IBOutlet weak var taskName: UILabel!
    
    @IBOutlet weak var taskImportance: UISwitch!
    
    var currentTask:Task?
    var previousVC:ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeTask()
        
    }

    
    @IBAction func completeActionClick(_ sender: Any) {
        previousVC?.completeTask(task: currentTask!)
        returnToPreviousController()
    }

    @IBAction func taskImportanceToggle(_ sender: Any) {
        currentTask?.important = taskImportance.isOn
        updateTaskName()
    }

    public func setCurrentTask(task:Task) {
        currentTask = task;
    }
    
    func initializeTask() {
        if currentTask != nil {
            updateTaskName()
            taskImportance.isOn = (currentTask?.important)!
        }
    }
    
    public func setPreviousVC(vc:ViewController)  {
        previousVC = vc
    }
    
    func returnToPreviousController()  {
        navigationController?.popViewController(animated: true)
    }
    
    func updateTaskName() {
        taskName.text = currentTask?.getName()
    }
    
}
