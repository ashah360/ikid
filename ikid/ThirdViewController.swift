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
    var index = 1
    var end = false
    
    var jokes: [String] = ["What do you call artificial bread?", "Non Naan", "haha"]
    
    let imageView = UIImageView(image: UIImage(named: "haha"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = jokes[0]
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1)
        if (end) {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        }
        else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        }
        UIView.commitAnimations()
        
        if jokes[index] == "haha" {
            lbl.text = ""
            imageView.alpha = 1
            imageView.center = view.center
            imageView.contentMode = .scaleAspectFit
            view.addSubview(imageView)
        }
        else {
            imageView.alpha = 0
            lbl.text = jokes[index]
        }
        
        index += 1
        
        if (index == jokes.count) {
            index = 0
            end = true
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
