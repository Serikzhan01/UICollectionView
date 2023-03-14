//
//  CompositionalCell.swift
//  UICollectionView
//
//  Created by Serikzhan on 14.03.2023.
//

import UIKit

class CompositionalCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "CompositionalCell"
    
    // MARK: - Outlets
    
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("CompositionalCell Error")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    
}
