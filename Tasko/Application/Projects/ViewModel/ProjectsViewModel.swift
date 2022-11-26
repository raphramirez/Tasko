//
//  ProjectsViewModel.swift
//  Tasko
//
//  Created by Raphael Ramirez on 9/29/22.
//

import UIKit
import Combine

final class ProjectsViewModel {
    
    private let projectsRepository = ProjectsRepository()
    
    @Published var projectsList: [Project] = []
    
    init() {
    }
}
