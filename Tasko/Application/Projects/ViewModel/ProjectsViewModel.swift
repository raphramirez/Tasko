//
//  ProjectsViewModel.swift
//  Tasko
//
//  Created by Raphael Ramirez on 9/29/22.
//

import UIKit
import Combine

final class ProjectsViewModel {
    
    @Published private var projectsList: [Project] = []
    
    var projects: Published<[Project]>.Publisher {
        return $projectsList
    }
}
