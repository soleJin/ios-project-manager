//
//  ProjectManager - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ProjectManagerCollectionViewController: UIViewController {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isScrollEnabled = false
        collectionView.backgroundColor = .lightGray
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        configureAutoLayout()
        configureNavigationBar()
        configureToolBar()
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func configureNavigationBar() {
        self.title = "Project Manager"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(didTapPlusButton))
    }
    
    @objc private func didTapPlusButton() {
        
    }
    
    private func configureToolBar() {
        self.navigationController?.isToolbarHidden = false
        let flexibleSapceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let undoButton = UIBarButtonItem(barButtonSystemItem: .undo, target: nil, action: #selector(didTapUndoButton))
        undoButton.isEnabled = false
        let redoButton = UIBarButtonItem(barButtonSystemItem: .redo, target: nil, action: #selector(didTapRedoButton))
        redoButton.isEnabled = false
        let barButtonItems = [flexibleSapceButton, undoButton, redoButton]
        toolbarItems = barButtonItems
    }
    
    @objc private func didTapUndoButton() {
        
    }
    
    @objc private func didTapRedoButton() {
        
    }
}
