//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Jan Andrzejewski on 05/07/2022.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    public var wrappedName: String {
        name ?? "Unknown candy"
    }
    @NSManaged public var origin: Country?

}

extension Candy : Identifiable {

}
