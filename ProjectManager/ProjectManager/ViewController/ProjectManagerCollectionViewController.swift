//
//  ProjectManager - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

enum ItemStatus {
    case todo
    case doing
    case done
    
    var title: String {
        switch self {
        case .todo:
            return "TODO"
        case .doing:
            return "DOING"
        case .done:
            return "DONE"
        }
    }
}

enum DetailViewType {
    case create
    case edit
    
    var lightButtonName: String {
        switch self {
        case .create:
            return "Cancel"
        case .edit:
            return "Edit"
        }
    }
}

class ProjectManagerCollectionViewController: UIViewController {
    var statusList = ["TODO", "DOING", "DONE"]
    let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)

        flowLayout.scrollDirection = .horizontal
        collectionView.isScrollEnabled = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .lightGray
        collectionView.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: "ListCollectionViewCell")
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCollectionView()
        configureAutoLayout()
        configureNavigationBar()
        configureToolBar()
    }
    
    private func setUpCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.backgroundColor = .white
        view.addSubview(collectionView)
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    private func configureNavigationBar() {
        navigationItem.title = "Project Manager"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(createNewItem))
    }
    
    private func configureToolBar() {
        navigationController?.isToolbarHidden = false
        
    }
    
    @objc func createNewItem() {
        let enrollViewController = ListItemDetailViewController()
        let navigationController = UINavigationController(rootViewController: enrollViewController)
        enrollViewController.configureNavigationBar(itemStatus: .todo, type: .create)
        present(navigationController, animated: true, completion: nil)
    }
}

extension ProjectManagerCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return statusList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionViewCell", for: indexPath) as? ListCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}

extension ProjectManagerCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfInterval: CGFloat = CGFloat(10 * (statusList.count - 1))
        let widthExcludingInterval: CGFloat = collectionView.frame.width - numberOfInterval
        let cellSize: CGSize = CGSize(width: widthExcludingInterval/3, height: collectionView.frame.height)
        return cellSize
    }
}


