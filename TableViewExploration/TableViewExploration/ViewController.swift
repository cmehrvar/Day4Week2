//
//  ViewController.swift
//  TableViewExploration
//
//  Created by Cina Mehrvar on 2015-10-29.
//  Copyright © 2015 DormRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    enum tableViewCellIdentifiers: String {
        case FirstCell = "cell1"
        case SecondCell = "cell2"
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        // 0%2 = 0, 1%2 = 1, 2%2 = 0...
        if indexPath.row % 2 == 0{
        
        cell = tableView.dequeueReusableCellWithIdentifier(tableViewCellIdentifiers.FirstCell.rawValue, forIndexPath: indexPath)
            if let cellSubclass = cell as? Cell1TableTableViewCell {
                cellSubclass.cellTitle.text = "Hi Cina"
                cellSubclass.cellSubtitle.text = "Bye Cina"
            }
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier(tableViewCellIdentifiers.SecondCell.rawValue, forIndexPath: indexPath)
        }
    
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.reloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var height:CGFloat = 60
        if indexPath.row % 2 == 0 {
           height = 120
        }
        return height
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == tableViewCellIdentifiers.FirstCell.rawValue {
            
            if let cell1ViewController = segue.destinationViewController as? cell1DetailViewController {
                cell1ViewController.cell1Title.text = "This is super great!"
            }
            
        } else if segue.identifier == tableViewCellIdentifiers.SecondCell.rawValue {
            
            if let cell2ViewController = segue.destinationViewController as? cell2DetailViewController {
                cell2ViewController.cell2Title.text = "This sucks"
            }
            
        }
            
        }
    }
    
    


