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
        configureNavigationBar()
        
        view.backgroundColor = .green
    }
    
    private func configureNavigationBar() {
        
    }
    
    private func configureAutoLayout() {
        NSLayoutConstraint.activate([
        
        ])
    }
}
