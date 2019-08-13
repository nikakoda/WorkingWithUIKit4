//
//  PreviewPage.swift
//  WorkingWithUIKit4
//
//  Created by Ника Перепелкина on 12/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cats"

class PreviewPage: UICollectionViewController {
    
    let imageNameArray = [ "Персидская",
                           "Шотландская вислоухая",
                           "Бенгальская",
                           "Сфинкс",
                           "Американский керл",
                           "Мейн-кун"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CatsCell
        cell.catsImageView.image = UIImage(named: imageNameArray[indexPath.row])
        // Configure the cell
    
        return cell
    }
}
