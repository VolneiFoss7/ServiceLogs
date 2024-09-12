//
//  AttachmentView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct AttachmentView: View {
    
    let attachmentName: String
    let attachmentSize: String
    let downloadAttachment: () -> Void
    
    var body: some View {
        HStack {
            HStack {
                Ellipse()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(hex: "#F7F7F7"))
                    .overlay(
                        Image(.attachments)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    )
                
                VStack(alignment: .leading) {
                    Text(attachmentName)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(hex: "#7EBC0A"))
                        .lineSpacing(10)
                        .frame(width: 115, alignment: .leading)
                        .lineLimit(1)
                        .truncationMode(.tail)
                                    
                        Text("Size: \(attachmentSize)")
                            .frame(width: 115, alignment: .leading)
                            .font(.system(size: 10))
                            .foregroundStyle(Color(hex: "#929292"))
                        }
                }
            
            Button(action: {
                            downloadAttachment()
                        }) {
                            Image(.download)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.leading, 12)
        }
        .frame(width: 221,height: 64)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(
                    Color(hex: "#E6E6E6"), lineWidth: 1)
        )
        
    }
}


#Preview {
    AttachmentView(
        attachmentName: "Broken pipe",
        attachmentSize: "900 KB",
        downloadAttachment: {}
    )
}
