//
//  ServiceLogsItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct ServiceLogsItemView: View {
    var body: some View {
        VStack {
            HeaderItemView(userName: "John")
        }
        .padding([.top, .bottom], 16)
        .border(Color(hex: "#E6E6E6"), width: 1)
    }
}


#Preview {
    ServiceLogsItemView()
}
