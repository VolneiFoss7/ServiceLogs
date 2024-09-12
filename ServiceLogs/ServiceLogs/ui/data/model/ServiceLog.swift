//
//  ServiceLog.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct ServiceLog {
    let userName: String
    let userImage: ImageResource
    let residentName: String
    let categoryTitle: String
    let reportText: String
    let attachment: Attachment
    
    let time: Date
    
    var timeString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm a"
        return dateFormatter.string(from: time)
    }
}
