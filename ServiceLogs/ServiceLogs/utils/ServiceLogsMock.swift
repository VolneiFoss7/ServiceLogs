//
//  ServiceLogsMock.swift
//  ServiceLogs
//
//  Created by Volnei Foss on 12/09/24.
//

import SwiftUI

let mockServiceLogs: [ServiceLog] = [
    ServiceLog(userName: "John Doe",
               userImage: .profile1,
               residentName: "Jane Smith",
               categoryTitle: "Maintenance",
               reportText: "The faucet is leaking.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "200KB"),
               time: Date()),

    ServiceLog(userName: "Alice Johnson",
               userImage: .profile2,
               residentName: "Michael Brown",
               categoryTitle: "Electrical",
               reportText: "The lights are flickering.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-3600)),

    ServiceLog(userName: "Robert Wilson",
               userImage: .profile1,
               residentName: "Emma Davis",
               categoryTitle: "Plumbing",
               reportText: "The toilet is clogged.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "300KB"),
               time: Date().addingTimeInterval(-7200)),

    ServiceLog(userName: "James Miller",
               userImage: .profile1,
               residentName: "Olivia Garcia",
               categoryTitle: "Cleaning",
               reportText: "Common area needs cleaning.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-10800)),

    ServiceLog(userName: "William Martinez",
               userImage: .profile1,
               residentName: "Ava Rodriguez",
               categoryTitle: "Maintenance",
               reportText: "Broken window in the living room.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "500KB"),
               time: Date().addingTimeInterval(-14400)),

    ServiceLog(userName: "Sophia Lee",
               userImage: .profile2,
               residentName: "Lucas Martinez",
               categoryTitle: "Security",
               reportText: "The front door is not locking.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-18000)),

    ServiceLog(userName: "Liam Anderson",
               userImage: .profile1,
               residentName: "Mia Thomas",
               categoryTitle: "Electrical",
               reportText: "Power outage in the kitchen.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "150KB"),
               time: Date().addingTimeInterval(-21600)),

    ServiceLog(userName: "Elijah White",
               userImage: .profile1,
               residentName: "Amelia Harris",
               categoryTitle: "Landscaping",
               reportText: "Garden needs maintenance.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-25200)),

    ServiceLog(userName: "Noah Thompson",
               userImage: .profile1,
               residentName: "Evelyn Clark",
               categoryTitle: "Maintenance",
               reportText: "Air conditioning is not working.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "450KB"),
               time: Date().addingTimeInterval(-28800)),

    ServiceLog(userName: "Isabella Lee",
               userImage: .profile2,
               residentName: "Benjamin Lewis",
               categoryTitle: "Cleaning",
               reportText: "Trash needs to be taken out.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-32400)),

    ServiceLog(userName: "Charlotte Walker",
               userImage: .profile2,
               residentName: "Oliver Young",
               categoryTitle: "Plumbing",
               reportText: "The shower is leaking.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "350KB"),
               time: Date().addingTimeInterval(-36000)),

    ServiceLog(userName: "Amelia King",
               userImage: .profile2,
               residentName: "Henry Hall",
               categoryTitle: "Maintenance",
               reportText: "The radiator is making noise.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-39600)),

    ServiceLog(userName: "Evelyn Wright",
               userImage: .profile2,
               residentName: "Ella Scott",
               categoryTitle: "Electrical",
               reportText: "Outlet is not working.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "100KB"),
               time: Date().addingTimeInterval(-43200)),

    ServiceLog(userName: "Harper Green",
               userImage: .profile2,
               residentName: "James Baker",
               categoryTitle: "Security",
               reportText: "CCTV needs repair.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-46800)),

    ServiceLog(userName: "Avery Adams",
               userImage: .profile2,
               residentName: "Lucas Nelson",
               categoryTitle: "Cleaning",
               reportText: "Windows need washing.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "250KB"),
               time: Date().addingTimeInterval(-50400)),

    ServiceLog(userName: "Scarlett Carter",
               userImage: .profile2,
               residentName: "Grace Mitchell",
               categoryTitle: "Landscaping",
               reportText: "Weeds are growing in the garden.",
               attachment: Attachment(attachment: nil, attachmentName: "", attachmentSize: ""),
               time: Date().addingTimeInterval(-54000)),

    ServiceLog(userName: "Avery Adams",
               userImage: .profile2,
               residentName: "Lucas Nelson",
               categoryTitle: "Cleaning",
               reportText: "Windows need washing.",
               attachment: Attachment(attachment: URL(string: "https://media.istockphoto.com/id/1081436086/photo/water-pressure-from-a-large-pipe-over-the-river.jpg?s=612x612&w=0&k=20&c=JoUu7W3og1KTi4O5pddUznkqkNd4kAtbTKop-ull09c="), attachmentName: "water-pressure.jpg", attachmentSize: "250KB"),
               time: Date().addingTimeInterval(-50400))
    ]
