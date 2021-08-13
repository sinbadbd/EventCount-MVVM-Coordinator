//
//  EventListViewModel.swift
//  EventListViewModel
//
//  Created by Imran on 13/8/21.
//

import Foundation

final class EventListViewModel {
    
    let title = "Event"
    
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent(){
        print("Tapped the add event")
        coordinator?.starAddEvent()
    }
}
