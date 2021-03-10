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
        configureSubviews()
        configureAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureSubviews() {
        addSubview(containerView)
        containerView.addSubview(headerTitleLabel)
        containerView.addSubview(listCountLabel)
    }
    
    private func configureAutoLayout() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalTo: containerView.widthAnchor),
            centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            heightAnchor.constraint(equalTo: containerView.heightAnchor),
            
            headerTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            headerTitleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            headerTitleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),

            listCountLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            listCountLabel.leadingAnchor.constraint(equalTo: headerTitleLabel.trailingAnchor, constant: 15),
            listCountLabel.widthAnchor.constraint(equalToConstant: 30),
            listCountLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
