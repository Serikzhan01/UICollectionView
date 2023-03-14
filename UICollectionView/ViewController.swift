//
//  ViewController.swift
//  UICollectionView
//
//  Created by Serikzhan on 13.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
   
    // MARK: - Outlets
    fileprivate lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBlue
        title = "Books"
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints{ make in
            make.left.top.right.bottom.equalTo(view)
        }
    }
    
    // MARK: - Actions

}
