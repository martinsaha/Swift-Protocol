//
//  ViewController.swift
//  Protocol
//
//  Created by Martin Prabhu on 17/09/18.
//  Copyright © 2018 TAG. All rights reserved.
//

import UIKit



class ViewController: UIViewController,someDelegate {

  

    @IBOutlet weak var lblTitle: UILabel!


    @IBAction func click_Push(_ sender: Any){
        self.performSegue(withIdentifier: "second", sender: self)
    }

    func valueLable(update : String){
        self.lblTitle.text = update
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "second"{
            let destination = segue.destination as! ViewController_B
            destination.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

