//
//  FlowLayoutCell.swift
//  UICollectionView
//
//  Created by Serikzhan on 13.03.2023.
//
import UIKit
import SnapKit

class FlowLayoutCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "FlowLayoutCell"
    
    // MARK: - Outlets

    
    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
