//
//  LoginViewController.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/28/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtEmail.attributedPlaceholder = 
        NSAttributedString(
            string: "Email ID",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Color 5")!]
        )
        
        txtPassword.attributedPlaceholder =
        NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "Color 5")!]
        )
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
