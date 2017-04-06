//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by theBeast on 4/5/17.
//  Copyright © 2017 theBeast. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    static var identifier = "addSegue";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addClicked(_ sender: Any) {
        print("add was clicked")
        createTask(name: taskNameTextField.text!, important: importantSwitch.isOn)
        //for going back to the previous viewController
        returnToPreviousController()
    }

    
    @IBAction func switchToggled(_ sender: Any) {
        print(importantSwitch.isOn)
    }
    
    func createTask(name:String, important:Bool) {
        let task = Task(name: name,important: important)
        previousVC.addTask(task: task)
    }
    func returnToPreviousController()  {
        navigationController?.popViewController(animated: true)
    }
  

}
