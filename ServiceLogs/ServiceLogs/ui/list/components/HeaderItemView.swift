//
//  HeaderItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct HeaderItemView: View {
    @ObservedObject var viewModel: ServiceLogsViewModel
    let userName: String
    let index: Int

    var body: some View {
        HStack {
            Text("\(userName) added a new interaction")
                .textCase(.uppercase)
                .font(.system(size: 10, weight: .bold))
                .padding(.leading, 16)
                .foregroundColor(Color(hex: "#636363"))
                .padding([.top, .bottom], 4)
            
            Spacer()
            
            Menu {
                Button(action: {
                   
                }) {
                    Label("Pin", systemImage: "pin")
                }
                
                Button(action: {
                    
                }) {
                    Label("Edit", systemImage: "pencil")
                }
                
                Button(action: {
                    viewModel.removeLog(at: index)
                }) {
                    Label("Delete", systemImage: "trash")
                }
            } label: {
                Image(systemName: "ellipsis")
                    .padding(.trailing, 16)
                    .foregroundColor(Color(hex: "#7EBC0A"))
            }
        }
        .frame(maxWidth: .infinity)
    }
}
