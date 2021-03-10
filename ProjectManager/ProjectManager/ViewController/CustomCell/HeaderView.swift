//
//  TableViewHeaderCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/11.
//

import UIKit

class HeaderView: UIView {
    
    private let containerView = UIView()

    private let headerTitleLabel: UILabel = {
        let headerTitleLabel = UILabel()
        headerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headerTitleLabel.font = UIFont.boldSystemFont(ofSize: 35)
        return headerTitleLabel
    }()
    
    private let listCountLabel: UILabel = {
        let cellCountLabel = UILabel()
        cellCountLabel.translatesAutoresizingMaskIntoConstraints = false
        cellCountLabel.backgroundColor = .black
        cellCountLabel.textColor = .white
        cellCountLabel.textAlignment = .center
        cellCountLabel.font = UIFont.boldSystemFont(ofSize: 25)
        cellCountLabel.layer.masksToBounds = true
        cellCountLabel.layer.cornerRadius = 15
        return cellCountLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubview()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureSubview() {
        addSubview(containerView)
        containerView.addSubview(headerTitleLabel)
        containerView.addSubview(listCountLabel)
    }
}
