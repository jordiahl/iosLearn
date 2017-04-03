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
    
    var emojis = ["😂", "😡", "😱", "😎", "😤", "this is at index 5", "this is at index 6", "this is at index 7", "this is at index 8"];
    
    
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
        return emojis.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        
        print(indexPath.row);
        
        cell.textLabel?.text = emojis[indexPath.row]
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let emoji:String = emojis[indexPath.row];
        performSegueWithIdentifier("moveSegue", sender: emoji);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destinationViewController as! DefinitionViewController
        defVC.sendEmoji(sender as! String)
        print(sender)
        
    }
    
    

}

