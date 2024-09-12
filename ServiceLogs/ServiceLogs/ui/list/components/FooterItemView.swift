//
//  FooterItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct FooterItemView: View {
    let time: String
    
    var body: some View {
        HStack {
            Text("time: \(time)")
                .foregroundColor(Color(hex: "#929292"))
                .font(.system(size: 10))
                .textCase(.uppercase)
        }
        .padding(.leading, 16)
        .padding(.top, 4)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    FooterItemView(time: "\(Date.now.formatted())")
}
