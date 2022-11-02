//
//  ProjectTableViewCell.swift
//  Tasko
//
//  Created by Raphael Ramirez on 9/29/22.
//

import UIKit

class ProjectTableViewCell: UITableViewCell {
    
    static let identifier = "ProjectTableViewCell"
    
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var lblDeadline: UILabel!
    @IBOutlet private weak var lblStatus: UILabel!
    @IBOutlet private weak var viewStatusIndicator: UIView!
    @IBOutlet private weak var stackPeople: UIStackView!
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure (with vm: ProjectCellViewModel) {
        self.lblTitle.text = vm.title
        self.lblDeadline.text = vm.dateCreated
        self.lblStatus.text = vm.status
        
        for views in stackPeople.subviews {
            views.makeRounded()
        }
        
        for (index, member) in vm.members.enumerated() {
            stackPeople.subviews[index].backgroundColor = member.avatarColor
            let memberInitial = UILabelInitial(for: member)
            stackPeople.subviews[index].addSubview(memberInitial)
            stackPeople.subviews[index].isHidden = false
        }
    }
    
    func UILabelInitial(for model: Profile) -> UILabel {
        let initial = UILabel(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        initial.font = UIFont(name: "Inter-Regular", size: 12)
        initial.textAlignment = .center
        initial.text = "\(model.firstName[0])\(model.lastName[0])"
        
        return initial
    }
}

struct ProjectCellViewModel {
    var title: String
    var dateCreated: String
    var status: String
    var members: [Profile]
    
    init(with model: Project) {
        self.title = model.title
        self.dateCreated = model.dateCreated.format(to: "MM/dd/yyyy")
        self.members = model.members
        
        let status = [
            ProjectStatus.InProgress: "In Progress",
            ProjectStatus.Completed: "Completed",
            ProjectStatus.OnHold: "On Hold",
        ]
        self.status = status[model.status]!
    }
}
