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
                userImage: serviceLog.userImage
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
            time: Date.now)
    )
}
