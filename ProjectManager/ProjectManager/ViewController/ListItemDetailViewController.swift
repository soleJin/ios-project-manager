//
//  ListItemDetailViewController.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import UIKit

class ListItemDetailViewController: UIViewController {
    private let titleTextField = UITextField()
    private let deadLineDatePicker = UIDatePicker()
    private let descriptionTextView = UITextView()
    private let deadLineInputToggleButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAutoLayout()
    }
    
    func configureNavigationBar(itemStatus: ItemStatus, type: DetailViewType) {
        let leftBarButton: UIBarButtonItem = {
            let barButtonItem = UIBarButtonItem()
            barButtonItem.title = type.lightButtonName
            barButtonItem.style = .plain
            barButtonItem.target = self
            
            switch type {
            case .create:
                barButtonItem.action = #selector(edit)
            case .edit:
                barButtonItem.action = #selector(cancel)
            }
            return barButtonItem
        }()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(done))
        
        navigationItem.title = itemStatus.title
        navigationItem.leftBarButtonItem = leftBarButton
        navigationItem.rightBarButtonItem = doneButton
    }
    
    private func configureAutoLayout() {
    }
    
    @objc func edit() {
        
    }
    
    @objc func cancel() {
        
    }
    
    @objc func done() {
        
    }
}
