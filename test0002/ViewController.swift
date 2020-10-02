//
//  ViewController.swift
//  test0002
//
//  Created by きゅん on 2020/10/01.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        
        
      
    }

    
    @IBAction func next(_ sender: Any) {
        //ラベルに出力
        
        text = textField.text!
        textLabel.text = text
        
        
        
        performSegue(withIdentifier: "SegueNext", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "SegueNext" {
            
            let nextVC = segue.destination as! SegueNextViewController
            
            nextVC.nextText = text
            
        }
    }
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func textFieldAction(_ sender: Any) {
       
        
        
    }
    
}

