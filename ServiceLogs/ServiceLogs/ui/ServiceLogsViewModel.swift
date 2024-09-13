//
//  ServiceLogsViewModel.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import Foundation
import UIKit
import Combine

class ServiceLogsViewModel: ObservableObject {
    @Published var serviceLogs: [ServiceLog] = []
    private var originalServiceLogs: [ServiceLog] = mockServiceLogs
    @Published var currentPage = 1
    private let itemsPerPage = 10
    private let allLogs = mockServiceLogs
    
    @Published var downloadedImage: UIImage?
    
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
    
    func refreshLogs() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.currentPage = 1
            self.serviceLogs = []
            self.loadMoreLogs()
        }
    }
    
    
    func removeLog(at index: Int) {
        serviceLogs.remove(at: index)
    }
    
    func downloadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Erro ao baixar a imagem: \(error)")
                return
            }
            
            guard let data = data, let downloadedImage = UIImage(data: data) else {
                print("Erro ao converter dados em imagem")
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedImage = downloadedImage
                self.saveImageLocally(image: downloadedImage)
            }
        }
        task.resume()
    }
    
    func saveImageLocally(image: UIImage) {
        guard let data = image.jpegData(compressionQuality: 1) else { return }
        
        let fileManager = FileManager.default
        let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        
        if let documentDirectory = urls.first {
            let fileURL = documentDirectory.appendingPathComponent("imagem_baixada.jpg")
            
            do {
                try data.write(to: fileURL)
                print("Imagem salva em: \(fileURL.path)")
            } catch {
                print("Erro ao salvar a imagem: \(error)")
            }
        }
    }
    
    var hasMoreLogs: Bool {
        return serviceLogs.count < allLogs.count
    }
}
