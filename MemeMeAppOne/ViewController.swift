//
//  ViewController.swift
//  MemeMeAppOne
//
//  Created by Abhilash Khare on 12/15/17.
//  Copyright © 2017 Abhilash Khare. All rights reserved.
//

import Foundation
import UIKit

class ViewController : UITableViewController{
    
 
    
    var  memes = [Meme]()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        memes = appDelegate.memes
        self.tableView.reloadData()
    }
    
  
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       
        return self.memes.count    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCellTable")!
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
    //    tableView.estimatedRowHeight = 200
        tableView.rowHeight = 100
        
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topTextField.text! + "..." + meme.bottomTextField.text!
        return cell
        
}


}
