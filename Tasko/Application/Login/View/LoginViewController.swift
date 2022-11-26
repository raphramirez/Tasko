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
        
        self.title = ""
    }
    
    @IBAction func onLogin(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Projects", bundle: nil)
        guard let mainVC = storyBoard.instantiateViewController(withIdentifier: "ProjectsViewController") as? ProjectsViewController else {
            return
        }
        
        mainVC.navigationItem.hidesBackButton = true
        
        self.navigationController?.pushViewController(mainVC, animated: true)
    }
    
    @IBAction func onRegister(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "SignUp", bundle: nil)
        guard let signUpVC = storyBoard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else {
            return
        }
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    
    
    @IBAction func onForgotPassword(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "ForgotPassword", bundle: nil)
        guard let forgotPasswordVC = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController else {
            return
        }
        
        self.navigationController?.pushViewController(forgotPasswordVC, animated: true)
    }
}
