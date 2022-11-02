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
        
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Test", style: .plain, target: nil, action: nil)
        
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
    
    @IBAction func onLogin(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard let mainViewController = storyBoard.instantiateViewController(withIdentifier: "MainTabController") as? MainTabController else {
            return
        }
        
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
    
}
