//
//  BodyItemView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct BodyItemView: View {
    
    let residentName: String
    let categoryTitle: String
    let reportText: String
    let userImage: ImageResource
    let attachment: Attachment
    @ObservedObject var viewModel: ServiceLogsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TagView(
                    image: userImage,
                    text: residentName,
                    backgroundColor: "",
                    borderColor: "#7EBC0A",
                    borderRadius: 26
                )
                
                Text("•")
                    .font(.system(size: 13))
                    .foregroundColor(Color(hex: "#636363"))
                
                TagView(
                    text: categoryTitle,
                    backgroundColor: "#F7F7F7",
                    borderColor: "#E6E6E6",
                    borderRadius: 4
                )
                
                Spacer()
            }
            .padding(.leading, 16)
            
            Text(reportText)
                .font(.system(size: 14))
                .padding([.leading, .trailing], 16)
            
            if attachment.attachment != nil {
                AttachmentView(
                    attachmentName: attachment.attachmentName,
                    attachmentSize: attachment.attachmentSize,
                    downloadAttachment: {
                        if let urlString = attachment.attachment?.absoluteString {
                            viewModel.downloadImage(from: urlString)
                        }
                    }
                )
                .padding(.leading, 16)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
