//
//  MainViewController.swift
//  DSWeibo
//
//  Created by liuqing on 16/6/12.
//  Copyright © 2016年 liuqing. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor.orangeColor()

        addChildViewController(HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
    }
    
    private func addChildViewController(childViewController:UITableViewController,title:String,imageName:String){
        
        childViewController.tabBarItem.image = UIImage(named: imageName)
        childViewController.tabBarItem.selectedImage = UIImage(named: imageName+"_highlighted")
        
        childViewController.title = title
        let nav = UINavigationController()
        nav.addChildViewController(childViewController)
        
        addChildViewController(nav)
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
