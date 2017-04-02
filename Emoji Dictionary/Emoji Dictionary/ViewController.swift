//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Hernandez,Jordi A on 4/2/17.
//  Copyright © 2017 Hernandez,Jordi A. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var daCoolTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        daCoolTableView.dataSource = self;
        daCoolTableView.delegate = self;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        cell.textLabel?.text = "😂 😂 😂 😂 😂 😂 😂 😂 😂 😂😂 😂 😂 😂 😂 ";
        return cell;
    }
    

    

}

