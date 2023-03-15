//
//  TopCell.swift
//  UICollectionView
//
//  Created by Serikzhan on 15.03.2023.
//

import UIKit

class TopCell: UICollectionViewCell {
    
    static let identifier = "TopCell"
    
    // MARK: - Outlets
    
    private lazy var featuredTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        return label
    }()
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
   //     imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(image)
        addSubview(numberLabel)
        addSubview(featuredTitle)
        addSubview(descriptionLabel)
    }
    
    private func setupLayout() {
        
        image.snp.makeConstraints { make in
            make.width.equalTo(40)
            make.height.equalTo(90)
            make.left.top.bottom.equalTo(contentView)
        }
        
        numberLabel.snp.makeConstraints { make in
            make.left.equalTo(image.snp.right).offset(10)
            make.top.bottom.equalTo(contentView)
        }
        
        featuredTitle.snp.makeConstraints { make in
            make.left.equalTo(numberLabel.snp.right).offset(10)
            make.centerY.equalTo(contentView).offset(-10)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.left.equalTo(numberLabel.snp.right).offset(10)
            make.centerY.equalTo(contentView).offset(10)
        }
    }
    
    func configuration(model: CompositionalModel) {
        self.featuredTitle.text = model.mainTitle
        self.descriptionLabel.text = model.description
        self.image.image = UIImage(named: model.image)
        self.numberLabel.text = String("\(model.numberOfItem ?? 0)")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
