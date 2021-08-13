//
//  EventListCoordinator.swift
//  EventListCoordinator
//
//  Created by Imran on 13/8/21.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navigationController : UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListVC : EventListViewController = .instantiate()
        let eventListViewModel = EventListViewModel()
        eventListViewModel.coordinator = self
        eventListVC.viewModel = eventListViewModel
        
        navigationController.setViewControllers([eventListVC], animated: false)
    }
    
    func starAddEvent(){
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.start()
    }
    
}
