//
//  ListCollectionViewCell.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import Foundation
import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    var itemList = [Todo]()
    let tableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        configureTableView()
        configureAutoLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ListItemTableViewCell.self, forCellReuseIdentifier: "ListTableViewCell")
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .systemGray6
        tableView.tableFooterView = UIView()
        contentView.addSubview(tableView)
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: contentView.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}

extension ListCollectionViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return itemList.count
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as? ListItemTableViewCell else {
            return UITableViewCell()
        }
        
        // 임시 데이터
        let todo = Todo(title: "찌로랑 코딩하기", description: "이불 속에 들어가고 싶다", deadLine: Date())
        let todo2 = Todo(title: "Sole과 UI 만들기", description: "UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.UI를 만들자.", deadLine: Date())
        
        if indexPath.row % 2 == 0 {
            cell.fillLabelsText(item: todo)
        } else {
            cell.fillLabelsText(item: todo2)
        }
//        cell.fillLabelsText(item: todo)
//        cell.fillLabelsText(item: itemList[indexPath.row])
        cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        cell.contentView.backgroundColor = .systemGray6
        return cell
    }
}

extension ListCollectionViewCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
