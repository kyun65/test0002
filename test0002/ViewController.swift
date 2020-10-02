//
//  ViewController.swift
//  test0002
//
//  Created by きゅん on 2020/10/01.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource{


    
    var textArray = [String]()
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textField.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
      
    }

    

 

  
    //セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //セルの情報
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel!.text = textArray[indexPath.row]
        cell.imageView!.image = UIImage(named: "chekImage")
        
        return cell
    }
    
    
    
//    /高さ
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/13
    }
    
    
    //リターンキー
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textArray.append(textField.text!)
        textField.resignFirstResponder()
        textField.text = ""
        tableView.reloadData()
        
        return true
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        
          nextVC.nextLabel = textArray[indexPath.row]
        
        
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    


    
    
    
    

}

