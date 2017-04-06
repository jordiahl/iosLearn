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
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "selectTask", sender: task)
        
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
        parseSegue(segue: segue, sender: sender)
        
    }
    
    func parseSegue(segue:UIStoryboardSegue, sender:Any?) {
        
        if segue.identifier == CreateTaskViewController.identifier {
            let nextVc:CreateTaskViewController = segue.destination as! CreateTaskViewController
            prepareForCreateSegue(controller:nextVc)
        }
        else{
            let nextVc:SelectTaskViewController = segue.destination as! SelectTaskViewController
            let task:Task = sender as! Task
            prepareForSelectSegue(controller:nextVc, sender: task)
        }
    }
    
    
    private func prepareForCreateSegue(controller:CreateTaskViewController) {
        controller.previousVC = self
    }
    
    private func prepareForSelectSegue(controller:SelectTaskViewController, sender:Task) {
        controller.setCurrentTask(task: sender)
        controller.setPreviousVC(vc: self)
    }
    
    func addTask(task:Task) {
        tasks.append(task)
        reloadView()
    }
    
    public func reloadView() {
        self.tableView.reloadData()
    }
    
    /**
     will reload the view every time that the view is called
    */
    override func viewWillAppear(_ animated: Bool) {
        reloadView()
    }
    
    public func completeTask(task:Task) {
    
        for index in 0...tasks.count {
            if tasks[index] === task {
                tasks.remove(at: index)
                return
            }
        }
    }
    
}

