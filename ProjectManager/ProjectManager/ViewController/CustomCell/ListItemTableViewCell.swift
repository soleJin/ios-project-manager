//
//  ListTableViewCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import Foundation
import UIKit

class ListItemTableViewCell: UITableViewCell {
    let contentsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        stackView.spacing = 1
        return stackView
    }()
    lazy var titleLable: UILabel = makeCellLabel(font: .title1, textColor: .black)
    lazy var descriptionLable: UILabel = makeCellLabel(font: .body, textColor: .gray, numberOfLines: 3)
    lazy var deadLineLabel: UILabel = makeCellLabel(font: .body, textColor: .black)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureContentsStackView()
        configureAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeCellLabel(font: UIFont.TextStyle, textColor: UIColor, numberOfLines: Int = 1) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        label.font = .preferredFont(forTextStyle: font)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    private func configureContentsStackView() {
        contentsStackView.addArrangedSubview(titleLable)
        contentsStackView.addArrangedSubview(descriptionLable)
        contentsStackView.addArrangedSubview(deadLineLabel)
        contentView.addSubview(contentsStackView)
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
            contentsStackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            contentsStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            contentsStackView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.9),
            contentsStackView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.9),
            
            titleLable.heightAnchor.constraint(equalTo: titleLable.heightAnchor)
        ])
    }
    
    override func prepareForReuse() {
        
    }
    
    func fillLabelsText(item: Todo) {
        titleLable.text = item.title
        descriptionLable.text = item.description
        deadLineLabel.text = "No Data"
    }
    
//    private func checkIsOverdue(date: Date) -> Bool {
//        
//    }
}
