//
//  Run+CoreDataProperties.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 22/10/20.
//
//

import Foundation
import CoreData


extension Run {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Run> {
        return NSFetchRequest<Run>(entityName: "Run")
    }

    @NSManaged public var attempts: Int64
    @NSManaged public var category: String?
    @NSManaged public var gameName: String?
    @NSManaged public var personalBestTime: NSDecimalNumber?
    @NSManaged public var segments: NSSet?

}

// MARK: Generated accessors for segments
extension Run {

    @objc(addSegmentsObject:)
    @NSManaged public func addToSegments(_ value: Segment)

    @objc(removeSegmentsObject:)
    @NSManaged public func removeFromSegments(_ value: Segment)

    @objc(addSegments:)
    @NSManaged public func addToSegments(_ values: NSSet)

    @objc(removeSegments:)
    @NSManaged public func removeFromSegments(_ values: NSSet)

}

extension Run : Identifiable {

}
