//
//  TagView.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

struct TagView: View {
    
    let image: ImageResource?
    let text: String
    let backgroundColor: String
    let borderColor: String
    let borderRadius: CGFloat
    
    init(image: ImageResource? = nil, text: String, backgroundColor: String ,borderColor: String, borderRadius: CGFloat) {
        self.image = image
        self.text = text
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.borderRadius = borderRadius
    }
    
    var body: some View {
        HStack {
            if let image = image {
                Image(image)
                    .resizable()
                    .frame(width: 16, height: 16)
                    .clipShape(Circle())
                    .alignmentGuide(.trailing) { d in d[.trailing] }
                    .padding([.trailing, .leading], 8)
                    .padding([.top, .bottom], 4)
                    .foregroundColor(Color(hex: "#7EBC0A"))
            }
            
            Text(text)
                .textCase(.uppercase)
                .fontWeight(.bold)
                .font(.system(size: 10))
                .foregroundColor(Color(hex: "#636363"))
                .padding(image != nil ? .trailing : [.trailing, .leading], 8)
                .padding([.top, .bottom], 4)
        }
        .frame(height: 24)
        .background(Color(hex: backgroundColor))
        .overlay(
            RoundedRectangle(cornerRadius: borderRadius)
                .stroke(Color(hex: borderColor), lineWidth: 1)
        )
    }
}

#Preview {
    VStack {
        TagView(image: .profile1,
                text: "John",
                backgroundColor: "" ,
                borderColor: "#7EBC0A",
                borderRadius: 26 )
        
        TagView(text: "Maintenance",
                backgroundColor: "#F7F7F7" ,
                borderColor: "#E6E6E6",
                borderRadius: 4)
    }
}

