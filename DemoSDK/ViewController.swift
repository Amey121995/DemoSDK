//
//  ViewController.swift
//  DemoSDK
//
//  Created by Amey Dalvi on 22/04/24.
//

import UIKit
import ApiManger
class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func invokeFramework(_ sender: Any) {
        ApiManger.showListView(from: self) { name, dict  in
            print("Selected User : \(dict)")
            if name == nil{
                
            }
            else{
                self.resultLabel.text = name
            }
        }
        
    }
}

