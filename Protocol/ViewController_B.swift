//
//  ViewController_B.swift
//  Protocol
//
//  Created by Martin Prabhu on 17/09/18.
//  Copyright © 2018 TAG. All rights reserved.
//

import UIKit

protocol someDelegate {
    func valueLable(update : String)
}

class ViewController_B: UIViewController, UITextFieldDelegate{
    var delegate : someDelegate! = nil
    @IBOutlet weak var txtField: UITextField!


    @IBAction func click_Pop(_ sender : Any){
        if (txtField.text?.count)! > 0 {
            delegate.valueLable(update: txtField.text!)
            self.navigationController?.popViewController(animated: true)
        } else {
            print("Please enter text in textField.")
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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
