//
//  ListCollectionViewCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    static let identifier = "ListCollectionViewCell"
    
    var list: [Todo?] = []
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .lightGray
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureAutoLayout() {
        let margin: CGFloat = 10
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin),
            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin),
            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin),
            tableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -margin)
        ])
    }
}
