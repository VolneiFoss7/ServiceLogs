//
//  ServiceLogsItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct ServiceLogsItemView: View {
    
    let serviceLog: ServiceLog
    let viewModel: ServiceLogsViewModel
    
    var body: some View {
        VStack {
            HeaderItemView(userName: serviceLog.userName)
            
            BodyItemView(
                residentName: serviceLog.residentName,
                categoryTitle: serviceLog.categoryTitle,
                reportText: serviceLog.reportText,
                userImage: serviceLog.userImage,
                attachment: serviceLog.attachment,
                viewModel: viewModel  
            )
            
            FooterItemView(time: serviceLog.timeString)
        }
        .padding([.top, .bottom], 16)
        .border(Color(hex: "#E6E6E6"), width: 1)
    }
}
