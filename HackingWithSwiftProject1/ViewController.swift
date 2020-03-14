//
//  ViewController.swift
//  HackingWithSwiftProject1
//
//  Created by Chen, Sihan on 2020-03-13.
//  Copyright © 2020 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

   var pictures = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items{
            if item.hasPrefix("nssl"){
                pictures.append(item)
            }
        
        }
        print(pictures)
    }


}

