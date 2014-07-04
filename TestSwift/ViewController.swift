//
//  ViewController.swift
//  TestSwift
//
//  Created by Answer on 4/7/14.
//  Copyright (c) 2014年 Answer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource
{
    
    var tableView : UITableView?
    var items     : NSArray?
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Swift"
        self.items = ["UILabel", "UIButton", "UIImageView", "UISlider",
        "UIWebView", "UISegmentedControl", "UIswitch", "UITextField", "UIScrollView"
        ,"UISearchBar", "UIPageControl", "UIDatePicker", "UIPickerView", "UIProgressView",
        "UITextView", "UIToolbar", "UIActionSheet", "UIActivityIndicatorView"]
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self,forCellReuseIdentifier:"Cell")
        self.view?.addSubview(self.tableView)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.items!.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel.text = self.items?.objectAtIndex(indexPath.row) as String
        
        return cell
    }
    
    func tableView(tableView:UITableView!, didSelectRowAtIndexPath indexPath:NSIndexPath!)
    {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        
        var detailViewController = DetailViewController()
        detailViewController.title = self.items?.objectAtIndex(indexPath.row) as String
        self.navigationController.pushViewController(detailViewController, animated:true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

