//
//  DoodleViewController.swift
//  Hello World
//
//  Created by PaingHtet on 19/06/2025.
//

import UIKit

class DoodleViewController: UIViewController {

    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        main()
        nextButton.layer.cornerRadius = 10
    }
    
}
