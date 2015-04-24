//
//  TodoItem.swift
//  TodoNotificationsTutorial
//
//  Created by Charles Konkol on 4/22/15
//  Copyright (c) 2015 Charles Konkol. All rights reserved.
//

import Foundation

struct TodoItem {
    var title: String
    var deadline: NSDate
    var UUID: String
    
    init(deadline: NSDate, title: String, UUID: String) {
        self.deadline = deadline
        self.title = title
        self.UUID = UUID
    }
    
    var isOverdue: Bool {
        return (NSDate().compare(self.deadline) == NSComparisonResult.OrderedDescending) // deadline is earlier than current date
    }
}