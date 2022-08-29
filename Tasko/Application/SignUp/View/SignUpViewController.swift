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
        
        let attrTerms = NSMutableAttributedString(string: "By signing up you agree to our Terms & Conditions and Privacy Policy")
        let termsAndConditionsLinkWasSet = attrTerms.setAsLink(textToFind: "Terms & Conditions", linkURL: "https://www.google.com/")
        let privacyPolicyLinkWasSet = attrTerms.setAsLink(textToFind: "Privacy Policy", linkURL: "https://www.google.com/")
        let linksWasSet = termsAndConditionsLinkWasSet && privacyPolicyLinkWasSet
        if linksWasSet {
            textViewTerms.attributedText = attrTerms
            textViewTerms.linkTextAttributes = [
                .foregroundColor: UIColor(named: "Color 3")!,
            ]
        }
        textViewTerms.font = UIFont(name: "Inter", size: 16)!
        textViewTerms.textColor = UIColor(named: "Text")!
    }

    @IBAction func goToLogin(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

