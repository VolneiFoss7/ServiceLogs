//
//  ServiceLogsItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct ServiceLogsItemView: View {
    
    let serviceLog: ServiceLog
    
    var body: some View {
        VStack {
            HeaderItemView(userName: serviceLog.userName)
            
            BodyItemView(
                residentName: serviceLog.residentName,
                categoryTitle: serviceLog.categoryTitle,
                reportText: serviceLog.reportText,
                userImage: serviceLog.userImage,
                attachment: serviceLog.attachment 
            )
            
            FooterItemView(time: serviceLog.timeString)
        }
        .padding([.top, .bottom], 16)
        .border(Color(hex: "#E6E6E6"), width: 1)
    }
}

#Preview {
    ServiceLogsItemView(
        serviceLog: ServiceLog(
            userName: "John Snow",
            userImage: .profile1,
            residentName: "Jane Doe",
            categoryTitle: "Maintenance",
            reportText: "Report",
            attachment: Attachment(
                attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg"),
                attachmentName: "water-pressure.jpg",
                attachmentSize: "200KB"
            ),
            time: Date.now
        )
    )
}
