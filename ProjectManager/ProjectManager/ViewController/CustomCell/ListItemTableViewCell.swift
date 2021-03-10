//
//  ListTableViewCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import UIKit

class ListItemTableViewCell: UITableViewCell {
    static let identifier = "ListItemTableViewCell"
    
    private let contentsContainerView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .white
        stackView.axis = .vertical
        stackView.layoutMargins = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        stackView.alignment = .leading
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: 19)
        return titleLabel
    }()
    
    private let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont.systemFont(ofSize: 17)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .gray
        return descriptionLabel
    }()
    
    private let deadLineLabel: UILabel = {
        let deadLineLabel = UILabel()
        deadLineLabel.translatesAutoresizingMaskIntoConstraints = false
        deadLineLabel.font = UIFont.systemFont(ofSize: 17)
        return deadLineLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .blue
        configureSubViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureSubViews() {
        contentView.addSubview(contentsContainerView)
        contentsContainerView.addSubview(titleLabel)
        contentsContainerView.addSubview(descriptionLabel)
        contentsContainerView.addSubview(deadLineLabel)
    }
}
