//
//  TableViewHeaderCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/11.
//

import UIKit

class HeaderView: UIView {
    
    private let containerView = UIView()

    var titleLabel: UILabel = {
        let headerTitleLabel = UILabel()
        headerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headerTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        return headerTitleLabel
    }()
    
    var listCountLabel: UILabel = {
        let cellCountLabel = UILabel()
        cellCountLabel.translatesAutoresizingMaskIntoConstraints = false
        cellCountLabel.backgroundColor = .black
        cellCountLabel.textColor = .white
        cellCountLabel.textAlignment = .center
        cellCountLabel.font = UIFont.boldSystemFont(ofSize: 17)
        cellCountLabel.layer.masksToBounds = true
        cellCountLabel.layer.cornerRadius = 13
        return cellCountLabel
    }()
    
    private let separatorView: UIView = {
        let seperatorVIew = UIView()
        
        return seperatorVIew
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubviews()
        configureAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureSubviews() {
        addSubview(containerView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(listCountLabel)
    }
    
    private func configureAutoLayout() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalTo: containerView.widthAnchor),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            heightAnchor.constraint(equalTo: containerView.heightAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),

            listCountLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            listCountLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 10),
            listCountLabel.widthAnchor.constraint(equalToConstant: 26),
            listCountLabel.heightAnchor.constraint(equalToConstant: 26)
        ])
    }
}
