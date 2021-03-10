//
//  ListTableViewCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import Foundation
import UIKit

class ListItemTableViewCell: UITableViewCell {
    let contentsContainerView = UIView()
    lazy var titleLable: UILabel = makeCellLabel(font: .title3, textColor: .black)
    lazy var descriptionLable: UILabel = makeCellLabel(font: .body, textColor: .gray, numberOfLines: 3)
    lazy var deadLineLabel: UILabel = makeCellLabel(font: .callout, textColor: .black)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureContentsContainerView()
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
    
    private func configureContentsContainerView() {
        contentsContainerView.translatesAutoresizingMaskIntoConstraints = false
        contentsContainerView.backgroundColor = .white
        contentsContainerView.addSubview(titleLable)
        contentsContainerView.addSubview(descriptionLable)
        contentsContainerView.addSubview(deadLineLabel)
        contentView.addSubview(contentsContainerView)
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
            contentsContainerView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            contentsContainerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            contentsContainerView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1),
            contentsContainerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            
            titleLable.topAnchor.constraint(equalTo: contentsContainerView.topAnchor, constant: 10),
            titleLable.centerXAnchor.constraint(equalTo: contentsContainerView.centerXAnchor),
            titleLable.widthAnchor.constraint(equalTo: contentsContainerView.widthAnchor, multiplier: 0.9),
            
            descriptionLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor),
            descriptionLable.centerXAnchor.constraint(equalTo: contentsContainerView.centerXAnchor),
            descriptionLable.widthAnchor.constraint(equalTo: contentsContainerView.widthAnchor, multiplier: 0.9),
            
            deadLineLabel.topAnchor.constraint(equalTo: descriptionLable.bottomAnchor, constant: 10),
            deadLineLabel.bottomAnchor.constraint(equalTo: contentsContainerView.bottomAnchor, constant: -10),
            deadLineLabel.centerXAnchor.constraint(equalTo: contentsContainerView.centerXAnchor),
            deadLineLabel.widthAnchor.constraint(equalTo: contentsContainerView.widthAnchor, multiplier: 0.9)
        ])
    }
    
    override func prepareForReuse() {
        
    }
    
    func fillLabelsText(item: Todo) {
        titleLable.text = item.title
        descriptionLable.text = item.description
        deadLineLabel.text = "2021. 03. 01"
    }
    
//    private func checkIsOverdue(date: Date) -> Bool {
//        
//    }
}
