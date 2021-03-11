//
//  ProjectManager - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ProjectManagerCollectionViewController: UIViewController {
    
    var todoTestList: [Todo] = [
        Todo(title: "todo1", description: "내용1", deadLine: nil),
        Todo(title: "todo2", description: "내용2", deadLine: nil)
    ]
    var doingTestList: [Todo] = [
        Todo(title: "doing1", description: "내용1", deadLine: nil),
        Todo(title: "doing2", description: "내용2", deadLine: Date()),
        Todo(title: "doing3", description: "내용3", deadLine: Date()),
        Todo(title: "doing4", description: "내용4", deadLine: nil)
    ]
    var doneTestList: [Todo] = [
        Todo(title: "done1", description: "내용1", deadLine: Date()),
        Todo(title: "done2", description: "내용2", deadLine: nil),
        Todo(title: "done3", description: "내용3", deadLine: nil)
    ]
    
    lazy var testList: [[Todo]] = [todoTestList, doingTestList, doneTestList]
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isScrollEnabled = false
        collectionView.backgroundColor = .systemGray5
        collectionView.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: ListCollectionViewCell.identifier)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureSubview()
        configureNavigationBar()
        configureToolBar()
        configureAutoLayout()
    }
    
    private func configureAutoLayout() {
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])
    }
    
    private func configureSubview() {
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
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

extension ProjectManagerCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListCollectionViewCell.identifier, for: indexPath) as? ListCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.list = self.testList[indexPath.item]
        if indexPath.item == 0 {
            cell.ownName = List.todo
        } else if indexPath.item == 1 {
            cell.ownName = List.doing
        } else if indexPath.item == 2 {
            cell.ownName = List.done
        }
        return cell
    }
}

extension ProjectManagerCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSpacing: CGFloat = 10
        
        let width = (collectionView.bounds.width - cellSpacing * 2 ) / 3
        let height = collectionView.bounds.height

        return CGSize(width: width, height: height)
    }
}
