//
//  ViewController.swift
//  DoIt
//
//  Created by theBeast on 4/5/17.
//  Copyright © 2017 theBeast. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        tasks = makeTasks();
        
        tableView.dataSource=self;
        tableView.delegate=self;
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.getName()
        return cell;
    }
    
    func makeTasks() -> [Task]{
        
        let task1 = Task (name: "Walk the dog", important: false)
        let task2 = Task (name: "Buy Cheese", important: true)
        let task3 = Task (name: "Mow the lawn", important: false);
        
        
        return [task1,task2, task3]
    }
    
    
    @IBAction func addClick(_ sender: Any) {
        print("it fucking works")
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVc = segue.destination as! CreateTaskViewController
        nextVc.previousVC = self
    }
    
    func addTask(task:Task) {
        tasks.append(task)
        self.tableView.reloadData()
    }
}

