//
//  ViewController.swift
//  Hello World
//
//  Created by PaingHtet on 18/06/2025.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var showButton: UIButton!
    
    @IBOutlet var goToTableViewButton: UIButton!
    @IBOutlet var goToCollectionViewButton: UIButton!
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.layer.borderColor = UIColor.orange.cgColor
        inputTextField.layer.borderWidth = 1.0
        inputTextField.layer.cornerRadius = 10
        inputTextField.delegate = self
        
        [showButton, goToTableViewButton, goToCollectionViewButton].forEach { $0?.layer.cornerRadius = 10 }
        
        profileImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onProfileImageTap(_:))))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        debugPrint("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        debugPrint("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        debugPrint("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        debugPrint("viewDidDisappear")
    }
    
    // MARK: - IBActions
    @IBAction func didShowButtonTap(_ sender: UIButton) {
        nameLabel.text = inputTextField.text
        inputTextField.text = ""
        inputTextField.resignFirstResponder()
    }
    
    // MARK: - Event Handers
    @objc func onProfileImageTap(_ sender: UIImageView) {
        inputTextField.text = ""
        inputTextField.resignFirstResponder()
        nameLabel.text = "Kirito's a developer 🧑🏻‍💻"
    }
    
}

// MARK: - UITextFieldDelegate Extension
extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameLabel.text = textField.text
        textField.text = ""
        textField.resignFirstResponder()
        return true
    }
}
