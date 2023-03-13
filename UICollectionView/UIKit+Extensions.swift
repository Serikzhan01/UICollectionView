//
//  UIKit+Extensions.swift
//  UICollectionView
//
//  Created by Serikzhan on 13.03.2023.
//

import UIKit

// MARK: - Extensions

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FlowLayoutCell.identifier, for: indexPath)
        return cell
    }
}
