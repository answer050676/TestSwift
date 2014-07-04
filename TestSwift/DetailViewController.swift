//
//  DetailViewController.swift
//  TestSwift
//
//  Created by Answer on 4/7/14.
//  Copyright (c) 2014年 Answer. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
        self.view!.backgroundColor = UIColor.whiteColor()
        
        if self.title == "UILabel"
        {
            //Label
            var label = UILabel(frame: self.view.bounds)
            label.backgroundColor = UIColor.clearColor()
            label.textAlignment = NSTextAlignment.Center
            label.font = UIFont.systemFontOfSize(36)
            label.text = "I'm a Label"
            self.view.addSubview(label)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
