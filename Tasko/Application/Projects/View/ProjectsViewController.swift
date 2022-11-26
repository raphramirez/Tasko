//
//  ProjectsViewController.swift
//  Tasko
//
//  Created by Raphael Ramirez on 8/25/22.
//

import UIKit
import Combine

class ProjectsViewController: UIViewController {
    
    private enum Constants {
        static let AVATAR_SIZE: CGFloat = 48
        static let AVATAR_FONT: UIFont? = UIFont(name: "Inter-Regular", size: 16)
    }
    
    @IBOutlet private weak var tableViewProjects: UITableView!
    
    let viewModel = ProjectsViewModel()
    
    var cancellables = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        
        tableViewProjects.dataSource = self
        tableViewProjects.delegate = self
        tableViewProjects.rowHeight = UITableView.automaticDimension
        
        tableViewProjects.register(ProjectTableViewCell.nib(), forCellReuseIdentifier: ProjectTableViewCell.identifier)
        
        setupBinders()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.tintColor = UIColor(named: "Text")
    }
    
    private func setupBinders() {
        viewModel.$projectsList.sink { [weak self] projects in
            self?.tableViewProjects.reloadData()
        }.store(in: &cancellables)
    }
    
    @IBAction func onProjectAdd(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "CreateProject", bundle: nil)
        guard let createProjectVC = storyBoard.instantiateViewController(withIdentifier: "CreateProjectViewController") as? CreateProjectViewController else {
            return
        }
        
        self.navigationController?.pushViewController(createProjectVC, animated: true)
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
    }
}

extension ProjectsViewController: UITableViewDelegate, UITableViewDataSource {
    
    private func configureTableView() { }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.projectsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProjectTableViewCell.identifier, for: indexPath) as! ProjectTableViewCell
        
        let vm = ProjectCellViewModel(with: viewModel.projectsList[indexPath.row])
//        cell.configure(with: vm)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select at \(indexPath)")
    }
}
