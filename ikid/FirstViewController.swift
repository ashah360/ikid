//
//  FirstViewController.swift
//  ikid
//
//  Created by Arman Shah on 10/24/18.
//  Copyright © 2018 Arman Shah. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var cornyJoke: UILabel!
    var jokeList: [String] = ["Knock Knock", "Who's there?", "Etch.", "Etch who?", "Bless you friend."]
    var position = 1
    var endOfJoke = false
    
    @IBAction func flip(_ sender: Any) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1)
        if (endOfJoke) {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        } else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        }
        UIView.commitAnimations()
        
        cornyJoke.text = jokeList[position]
        position += 1
        
        if (position == jokeList.count) {
            position = 0
            endOfJoke = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornyJoke.text = jokeList[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

