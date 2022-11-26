//
//  GetStartedViewController.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/25/22.
//

import UIKit

class GetStartedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = ""
    }
    
    @IBAction func onGetStartedClicked(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
        guard let mainViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else {
            return
        }
        
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
}

