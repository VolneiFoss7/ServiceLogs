//
//  HeaderItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct HeaderItemView: View {
    let userName: String

    var body: some View {
        HStack {
            Text("\(userName) added a new interaction")
                .textCase(.uppercase)
                .font(.system(size: 10, weight: .bold))
                .padding(.leading, 16)
                .foregroundColor(Color(hex: "#636363"))
                .padding([.top, .bottom], 4)
            
            Spacer()
            
            
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HeaderItemView(userName: "John")
}
