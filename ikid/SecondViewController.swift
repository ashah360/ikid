//
//  SecondViewController.swift
//  ikid
//
//  Created by Arman Shah on 10/24/18.
//  Copyright © 2018 Arman Shah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var pirateJoke: UILabel!
    var jokeList: [String] = ["What did the pirate say on his 80th birthday?", "Aye Matey. (I'm 80)"]
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
        
        pirateJoke.text = jokeList[position]
        position += 1
        
        if (position == jokeList.count) {
            position = 0
            endOfJoke = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pirateJoke.text = jokeList[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

