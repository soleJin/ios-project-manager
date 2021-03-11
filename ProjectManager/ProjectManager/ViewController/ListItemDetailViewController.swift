//
//  ListItemDetailViewController.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import UIKit

class ListItemDetailViewController: UIViewController {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 30
        stackView.alignment = .leading
        stackView.layoutMargins = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        return stackView
    }()
    
    private let titleTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.boldSystemFont(ofSize: 21)
        textField.placeholder = "Title"
        textField.borderStyle = .roundedRect
        //To apply Shadow
        textField.layer.shadowOpacity = 1
        textField.layer.shadowColor = UIColor.systemGray5.cgColor
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3.0
        return textField
    }()
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        datePicker.minimumDate = Date()
        return datePicker
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.image = UIImage(systemName: "checkmark.rectangle.portrait.fill")
        button.setTitle("날짜선택하지않음", for: .normal)
        return button
    }()
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.systemFont(ofSize: 17)
        textView.dataDetectorTypes = .all
        //To apply Shadow
        textView.layer.shadowOpacity = 1
        textView.layer.shadowColor = UIColor.systemGray5.cgColor
        textView.layer.shadowOffset = .zero
        textView.layer.shadowRadius = 3.0
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
        configureNavigationBar()
    }
    
    private func configureSubviews() {
        view.addSubview(stackView)
        stackView.addSubview(titleTextField)
        stackView.addSubview(datePicker)
        stackView.addSubview(descriptionTextView)
    }
    
    private func configureNavigationBar() {
        self.title = "TODO"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(didTapDoneButton))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: nil, action: #selector(didTapEditButton))
    }
    
    @objc private func didTapDoneButton() {
        
    }
    
    @objc private func didTapEditButton() {
        
    }
}
