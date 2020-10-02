//
//  NextViewController.swift
//  test0002
//
//  Created by きゅん on 2020/10/02.
//

import UIKit

class NextViewController: UIViewController {

    
    var nextLabel = String()
    
    @IBOutlet weak var NextString: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NextString.text = nextLabel


    }
    


}
