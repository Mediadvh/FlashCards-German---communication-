//
//  Fetcher.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 8/29/1399 AP.
//

import CoreData
import UIKit

class Fetcher{
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    func fetchLevels(into levels: inout [Level]){
        let request = Level.fetchRequest() as NSFetchRequest<Level>
        request.returnsObjectsAsFaults = false
      
        do{ levels = try context.fetch(request) }
       
        catch{}
    }
    
    func fetchTopics(into topics:inout [Topic]){
        
        let request = Topic.fetchRequest() as NSFetchRequest<Topic>
        request.returnsObjectsAsFaults = false
     
      
        
        do{topics = try context.fetch(request)}
        catch {
            print("Error = \(error.localizedDescription)")
        }
       
    }
  
    
    
    
}
