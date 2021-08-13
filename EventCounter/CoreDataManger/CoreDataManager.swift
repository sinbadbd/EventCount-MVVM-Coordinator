//
//  CoreDataManager.swift
//  CoreDataManager
//
//  Created by Imran on 13/8/21.
//

import Foundation
import CoreData
import UIKit

final class CoreDataManager {
    
    
    lazy var persistentContauner : NSPersistentContainer = {
        let persistentContauner = NSPersistentContainer(name: "EventCounter")
        persistentContauner.loadPersistentStores { _, error in
            print(error?.localizedDescription ?? "")
        }
        return persistentContauner
    }()
    
    var moc: NSManagedObjectContext {
        persistentContauner.viewContext
    }
    
    func saveEvent(name:String, date:Date, image:UIImage){
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        event.setValue(date, forKey: "date")
        do {
            try moc.save()
        }catch {
            print(error)
        }
    }
    
    func fetchEvent () -> [Event] {
        do {
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let event = try moc.fetch(fetchRequest)
            return event
            
        }catch {
            print(error)
            return []
        }
    }
    
    
}
