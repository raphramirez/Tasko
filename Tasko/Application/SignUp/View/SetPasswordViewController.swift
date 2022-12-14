//
//  SetPasswordViewController.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/29/22.
//

import UIKit

class SetPasswordViewController: UIViewController {

    @IBOutlet weak var textViewTermsPolicy: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attrTerms = NSMutableAttributedString(string: "By signing up you agree to our Terms & Conditions and Privacy Policy")
        let termsAndConditionsLinkWasSet = attrTerms.setAsLink(textToFind: "Terms & Conditions", linkURL: "https://www.google.com/")
        let privacyPolicyLinkWasSet = attrTerms.setAsLink(textToFind: "Privacy Policy", linkURL: "https://www.google.com/")
        let linksWasSet = termsAndConditionsLinkWasSet && privacyPolicyLinkWasSet
        if linksWasSet {
            textViewTermsPolicy.attributedText = attrTerms
            textViewTermsPolicy.linkTextAttributes = [
                .foregroundColor: UIColor(named: "Color 3")!,
            ]
        }
        textViewTermsPolicy.font = UIFont(name: "Inter", size: 16)!
        textViewTermsPolicy.textColor = UIColor(named: "Text")!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
