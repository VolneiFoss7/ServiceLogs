//
//  ServiceLogsViewModel.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import Foundation

class ServiceLogsViewModel: ObservableObject {
    @Published var serviceLogs: [ServiceLog] = []
    @Published var currentPage = 1
    private let itemsPerPage = 10
    
    
    let allLogs = mockServiceLogs
    
    init() {
        loadMoreLogs()
    }
    
    func loadMoreLogs() {
        let startIndex = (currentPage - 1) * itemsPerPage
        let endIndex = min(startIndex + itemsPerPage, allLogs.count)
        if startIndex < endIndex {
            let newLogs = Array(allLogs[startIndex..<endIndex])
            serviceLogs.append(contentsOf: newLogs)
            currentPage += 1
        }
    }
    
    var hasMoreLogs: Bool {
        return serviceLogs.count < allLogs.count
    }
}
