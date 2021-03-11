//
//  ListItemDetailViewController.swift
//  ProjectManager
//
//  Created by sole on 2021/03/09.
//

import UIKit

class ListItemDetailViewController: UIViewController {
    
    private let titleTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.boldSystemFont(ofSize: 19)
        textField.placeholder = "Title"
        textField.borderStyle = .roundedRect
        //To apply Shadow
        textField.layer.shadowOpacity = 1
        textField.layer.shadowColor = UIColor.systemGray5.cgColor
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3.0
        //To apply padding
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
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
    
    private let descriptionTextField: UITextView = {
        let textField = UITextView()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.dataDetectorTypes = .all
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
