//
//  MemeMeDetailViewController.swift
//  MemeMeAppOne
//
//  Created by Abhilash Khare on 1/11/18.
//  Copyright © 2018 Abhilash Khare. All rights reserved.
//

import Foundation
import UIKit

class MemeMeDetailViewController: UIViewController{
    
    var meme : Meme!
    
    @IBOutlet var memeImageView : UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(meme)
        self.tabBarController?.tabBar.isHidden = true
        self.memeImageView.image =  meme.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
}
