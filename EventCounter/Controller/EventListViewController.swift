//
//  EventListViewController.swift
//  EventListViewController
//
//  Created by Imran on 13/8/21.
//

import UIKit

class EventListViewController: UIViewController {

    
    private let coreDataManager = CoreDataManager()
    
    var viewModel: EventListViewModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBarIcon()
        
    coreDataManager.saveEvent(name: "atest", date: Date(), image: UIImage(named: "1")!)
        print(coreDataManager.fetchEvent())
    }
    
 
    private func navigationBarIcon(){
        let icon = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: icon, style: .plain, target: self, action: #selector(tappedRightBtnIcon))
        barButtonItem.tintColor = .blue
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel?.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func tappedRightBtnIcon(){
        print("tap")
        viewModel?.tappedAddEvent()
    }

}
