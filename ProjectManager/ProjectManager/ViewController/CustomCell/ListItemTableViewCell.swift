//
//  ListTableViewCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import UIKit

class ListItemTableViewCell: UITableViewCell {
    static let identifier = "ListItemTableViewCell"
    
    private let contentsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .white
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        stackView.alignment = .leading
        stackView.layoutMargins = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
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
        descriptionLabel.numberOfLines = 3
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
        configureSubviews()
        configureAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureSubviews() {
        contentView.addSubview(contentsStackView)
        contentsStackView.addSubview(titleLabel)
        contentsStackView.addSubview(descriptionLabel)
        contentsStackView.addSubview(deadLineLabel)
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
            contentsStackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            contentsStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            contentsStackView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            contentsStackView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            
            titleLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor),
            deadLineLabel.heightAnchor.constraint(equalTo: deadLineLabel.heightAnchor)
        ])
    }
    
    override func prepareForReuse() {
        titleLabel.text = nil
        descriptionLabel.text = nil
        deadLineLabel.text = nil
    }
    
    func fillLabelsText(todo: Todo) {
        titleLabel.text = todo.title
        descriptionLabel.text = todo.description
        deadLineLabel.text = todo.deadLine?.toString
    }
}
