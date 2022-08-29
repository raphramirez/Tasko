//
//  SignUpViewController.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/28/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtFullname: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var textViewTerms: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtEmail.attributedPlaceholder =
        NSAttributedString(
            string: "Email ID",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Color 5")!]
        )
        txtFullname.attributedPlaceholder =
        NSAttributedString(
            string: "Full Name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Color 5")!]
        )
        txtMobile.attributedPlaceholder =
        NSAttributedString(
            string: "Mobile",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Color 5")!]
        )
    }

    @IBAction func goToLogin(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

