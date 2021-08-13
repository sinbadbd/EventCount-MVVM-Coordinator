//
//  AppCoordinators.swift
//  AppCoordinators
//
//  Created by Imran on 13/8/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators : [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        
        let enventCoordinator = EventListCoordinator(navigationController: navigationController)
        childCoordinators.append(enventCoordinator)
        enventCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    
    
    
}
