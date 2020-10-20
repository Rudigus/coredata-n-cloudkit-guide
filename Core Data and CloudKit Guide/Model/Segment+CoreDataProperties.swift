//
//  Segment+CoreDataProperties.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 20/10/20.
//
//

import Foundation
import CoreData


extension Segment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Segment> {
        return NSFetchRequest<Segment>(entityName: "Segment")
    }

    @NSManaged public var name: String?
    @NSManaged public var bestTime: Date?
    @NSManaged public var run: Run?

}

extension Segment : Identifiable {

}
