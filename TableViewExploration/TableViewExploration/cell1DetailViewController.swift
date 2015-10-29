//
//  cell1ViewViewController.swift
//  TableViewExploration
//
//  Created by Cina Mehrvar on 2015-10-29.
//  Copyright © 2015 DormRoom. All rights reserved.
//

import UIKit

class cell1DetailViewController: UIViewController {

    @IBOutlet weak var cell1DescriptionTitle: UILabel!
    
    
    var titleString1: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let actualTitleString = titleString1 {
            cell1DescriptionTitle.text = actualTitleString
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
