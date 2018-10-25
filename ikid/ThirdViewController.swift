//
//  ThirdViewController.swift
//  ikid
//
//  Created by Arman Shah on 10/24/18.
//  Copyright © 2018 Arman Shah. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    var jokeList: [String] = ["What do you call artificial bread?", "Non Naan"]
    var position = 1
    var endOfJoke = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = jokeList[0]
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1)
        if (endOfJoke) {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        } else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        }
        UIView.commitAnimations()
        lbl.text = jokeList[position]
        position += 1
        if (position == jokeList.count) {
            position = 0
            endOfJoke = true
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
