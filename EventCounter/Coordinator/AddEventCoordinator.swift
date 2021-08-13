//
//  AddEventCoordinator.swift
//  AddEventCoordinator
//
//  Created by Imran on 13/8/21.
//

import UIKit

final class AddEventCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navigationController : UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let addEventCoordinator : AddEventViewController = .instantiate()
        let addEventViewModel = AddEventViewModel()
        addEventCoordinator.viewModel = addEventViewModel
        navigationController.present(addEventCoordinator, animated: true, completion: nil)
        
    }
    
}
