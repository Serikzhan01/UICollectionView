//
//  Cell.swift
//  UICollectionView
//
//  Created by Serikzhan on 14.03.2023.
//

import UIKit
import SnapKit

class Cell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "cell"
    
    // MARK: - Oulets
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var percentLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    lazy var cloudImage: UIImageView = {
        let image = UIImage(systemName: "cloud")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fill
        return stack
    }()
    
    private let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = 90
        return stack
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        
        addSubview(mainStack)
        mainStack.addArrangedSubview(image)
        mainStack.addArrangedSubview(bottomStack)
        bottomStack.addArrangedSubview(percentLabel)
        bottomStack.addArrangedSubview(cloudImage)
    }
    
    private func setupLayout() {
        
        mainStack.snp.makeConstraints { make in
            make.height.equalTo(300)
            make.width.equalTo(170)
        }
    
        percentLabel.snp.makeConstraints { make in
            make.width.equalTo(50)
        }
    }
    
    override func prepareForReuse() {
        self.image.image = nil
    }
}
