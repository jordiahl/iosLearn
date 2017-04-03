//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Hernandez,Jordi A on 4/2/17.
//  Copyright © 2017 Hernandez,Jordi A. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    var sentEmoji = "No emoji";
    
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emoji.text = sentEmoji;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sendEmoji(sentEmoji:String ){
        self.sentEmoji = sentEmoji;
        print(emoji);
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
