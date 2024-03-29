//
//  ViewController.swift
//  DemoTableView
//
//  Created by Din Din on 18/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnStoryboard: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
    @IBAction func moveToStoryboardTableViewController(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "StoryboardTableViewController") as! StoryboardTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func moveToTableViewController(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "TableViewController") as! TableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

