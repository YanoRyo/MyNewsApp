//
//  BaseViewController.swift
//  MyNewsApp
//
//  Created by 矢野涼 on 2020-06-06.
//  Copyright © 2020 Ryo Yano. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        reloadData()
        scrollToSlide(at: 0, animated: true)

    }
    
    override var titlesInSwitcher: [String]{
        
        return ["TOP","SPORTS","ECONOMY","IT","ENTERTAINMENT"]
    }

    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        
        switch index{
            
        case 0:
            return Page1ViewController()
        case 1:
            return Page2ViewController()
        case 2:
            return Page3ViewController()
        case 3:
            return Page4ViewController()
        case 4:
            return Page5ViewController()
            
        default:return Page1ViewController()
            
        }
        
        
        
    }
}
