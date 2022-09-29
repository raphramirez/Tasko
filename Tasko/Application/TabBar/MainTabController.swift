//
//  ViewController.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/25/22.
//

import UIKit

class MainTabController: UITabBarController {
    
    private enum Constants {
        static let AVATAR_SIZE: CGFloat = 48
        static let AVATAR_FONT: UIFont? = UIFont(name: "Inter-Regular", size: 16)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        let lblInitial = UILabel(frame: CGRect(x: 0, y: 0, width: Constants.AVATAR_SIZE, height: Constants.AVATAR_SIZE))
        lblInitial.text = "RR"
        lblInitial.font = Constants.AVATAR_FONT
        lblInitial.textAlignment = .center
        lblInitial.baselineAdjustment = .alignCenters
        lblInitial.textColor = UIColor(named: "Color 1")
        lblInitial.backgroundColor = UIColor(named: "Color 3")
        lblInitial.clipsToBounds = true
        lblInitial.layer.cornerRadius = Constants.AVATAR_SIZE / 2
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: lblInitial)
        
        self.navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(named: "mdi_dots-horizontal"), style: .plain, target: self, action: nil),
            UIBarButtonItem(image: UIImage(named: "mdi_bell-outline"), style: .plain, target: self, action: nil),
            UIBarButtonItem(image: UIImage(named: "mdi_magnify"), style: .plain, target: self, action: nil),
        ]
        
        self.navigationController?.navigationBar.tintColor = UIColor(named: "Text")
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
