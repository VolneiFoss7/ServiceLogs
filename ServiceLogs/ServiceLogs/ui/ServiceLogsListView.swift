//
//  ServiceLogsListView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct ServiceLogsListView: View {
    @StateObject private var viewModel = ServiceLogsViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                VStack(spacing: 16) {
                    Text("Service Logs")
                        .font(.system(size: 32))
                        .foregroundColor(Color(hex: "#383838"))
                    
                        Rectangle()
                            .fill(Color(hex: "#7EBC0A"))
                            .frame(width: 72, height: 4)
                            .padding(.leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.bottom, .top], 16)
                .padding(.leading, 16)
                
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(viewModel.serviceLogs.indices, id: \.self) { index in
                            ServiceLogsItemView(serviceLog: viewModel.serviceLogs[index])
                                .onAppear {
                                    if index == viewModel.serviceLogs.count - 1 && viewModel.hasMoreLogs {
                                        viewModel.loadMoreLogs()
                                    }
                                }
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ServiceLogsListView()
}

