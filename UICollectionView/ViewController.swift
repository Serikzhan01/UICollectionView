//
//  ViewController.swift
//  UICollectionView
//
//  Created by Serikzhan on 13.03.2023.
//

import UIKit

class ViewController: UIViewController {
   
    // MARK: - Outlets
    private lazy var сollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(FlowLayoutCell.self, forCellWithReuseIdentifier: FlowLayoutCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        return сollectionView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.backgroundColor = .systemBlue
        title = "simple example"
        view.addSubview(сollectionView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            сollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            сollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            сollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            сollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // MARK: - Actions

}
