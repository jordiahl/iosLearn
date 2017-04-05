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
    var emojisDescriptions = [String:String]();
    
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        setDescriptions();
        
        emoji.text = sentEmoji;
        
        addDescription(sentEmoji);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }
    
    
    func sendEmoji(_ sentEmoji:String ){
        self.sentEmoji = sentEmoji;
//        print(emoji);
    }
    
    func setDescriptions() {
        emojisDescriptions["😂"] = "dude laughing";
        emojisDescriptions["😡"] = "dude mad";
        emojisDescriptions["😱"] = "dude in awe";
        emojisDescriptions["😎"] = "suglasses dude";
        emojisDescriptions["😤"] = "dude huffing";
        emojisDescriptions["this is at index 5"] = "this is at index 5";
        emojisDescriptions["this is at index 6"] = "this is at index 6";
        emojisDescriptions["this is at index 7"] = "this is at index 7";
    }
    
    func addDescription(_ emoji:String) {
        if isInDictionary(emoji) {
            emojiDescription.text = emojisDescriptions[emoji];
        }
        else{
            emojiDescription.text = "couldnt find the value";
        }
    }
    
    func isInDictionary(_ emoji:String) -> Bool {
        return emojisDescriptions[emoji] != nil;
    }
    
//, , ,, , , , , "this is at index 8"
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
