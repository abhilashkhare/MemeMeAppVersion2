//
//  MemeMeCollectionViewController.swift
//  MemeMeAppOne
//
//  Created by Abhilash Khare on 12/24/17.
//  Copyright © 2017 Abhilash Khare. All rights reserved.
//

import UIKit
import Foundation


class MemeMeCollectionViewController: UICollectionViewController {
    
    var  memes = [Meme]()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        let heightCell = (view.frame.size.height - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: heightCell)
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewwillappear")
        memes = appDelegate.memes
        self.collectionView?.reloadData()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         print(self.memes.count)
        print("collectionview---numberofitems")
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         print("collectionview----cellforitematbefore")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath)
            as!  MemeCollectionViewCell
         print("collectionview----cellforitemat")
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
       
        cell.memeImage.image = meme.memedImage
        cell.top.text = meme.topTextField.text
        cell.bottom.text = meme.bottomTextField.text
    
        return cell
        
        
    }
    
    

}
