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
               time: Date()),

    ServiceLog(userName: "Alice Johnson",
               userImage: .profile2,
               residentName: "Michael Brown",
               categoryTitle: "Electrical",
               reportText: "The lights are flickering.",
               time: Date().addingTimeInterval(-3600)),

    ServiceLog(userName: "Robert Wilson",
               userImage: .profile1,
               residentName: "Emma Davis",
               categoryTitle: "Plumbing",
               reportText: "The toilet is clogged.",
               time: Date().addingTimeInterval(-7200)),

    ServiceLog(userName: "James Miller",
               userImage: .profile1,
               residentName: "Olivia Garcia",
               categoryTitle: "Cleaning",
               reportText: "Common area needs cleaning.",
               time: Date().addingTimeInterval(-10800)),

    ServiceLog(userName: "William Martinez",
               userImage: .profile1,
               residentName: "Ava Rodriguez",
               categoryTitle: "Maintenance",
               reportText: "Broken window in the living room.",
               time: Date().addingTimeInterval(-14400)),

    ServiceLog(userName: "Sophia Lee",
               userImage: .profile2,
               residentName: "Lucas Martinez",
               categoryTitle: "Security",
               reportText: "The front door is not locking.",
               time: Date().addingTimeInterval(-18000)),

    ServiceLog(userName: "Liam Anderson",
               userImage: .profile1,
               residentName: "Mia Thomas",
               categoryTitle: "Electrical",
               reportText: "Power outage in the kitchen.",
               time: Date().addingTimeInterval(-21600)),

    ServiceLog(userName: "Elijah White",
               userImage: .profile1,
               residentName: "Amelia Harris",
               categoryTitle: "Landscaping",
               reportText: "Garden needs maintenance.",
               time: Date().addingTimeInterval(-25200)),

    ServiceLog(userName: "Noah Thompson",
               userImage: .profile1,
               residentName: "Evelyn Clark",
               categoryTitle: "Maintenance",
               reportText: "Air conditioning is not working.",
               time: Date().addingTimeInterval(-28800)),

    ServiceLog(userName: "Isabella Lee",
               userImage: .profile2,
               residentName: "Benjamin Lewis",
               categoryTitle: "Cleaning",
               reportText: "Trash needs to be taken out.",
               time: Date().addingTimeInterval(-32400)),

    ServiceLog(userName: "Charlotte Walker",
               userImage: .profile2,
               residentName: "Oliver Young",
               categoryTitle: "Plumbing",
               reportText: "The shower is leaking.",
               time: Date().addingTimeInterval(-36000)),

    ServiceLog(userName: "Amelia King",
               userImage: .profile2,
               residentName: "Henry Hall",
               categoryTitle: "Maintenance",
               reportText: "The radiator is making noise.",
               time: Date().addingTimeInterval(-39600)),

    ServiceLog(userName: "Evelyn Wright",
               userImage: .profile2,
               residentName: "Ella Scott",
               categoryTitle: "Electrical",
               reportText: "Outlet is not working.",
               time: Date().addingTimeInterval(-43200)),

    ServiceLog(userName: "Harper Green",
               userImage: .profile2,
               residentName: "James Baker",
               categoryTitle: "Security",
               reportText: "CCTV needs repair.",
               time: Date().addingTimeInterval(-46800)),

    ServiceLog(userName: "Avery Adams",
               userImage: .profile2,
               residentName: "Lucas Nelson",
               categoryTitle: "Cleaning",
               reportText: "Windows need washing.",
               time: Date().addingTimeInterval(-50400)),

    ServiceLog(userName: "Scarlett Carter",
               userImage: .profile2,
               residentName: "Grace Mitchell",
               categoryTitle: "Landscaping",
               reportText: "Weeds are growing in the garden.",
               time: Date().addingTimeInterval(-54000)),

    ServiceLog(userName: "Ella Perez",
               userImage: .profile2,
               residentName: "Nathan Ramirez",
               categoryTitle: "Maintenance",
               reportText: "Garage door is stuck.",
               time: Date().addingTimeInterval(-57600)),

    ServiceLog(userName: "Luna Sanders",
               userImage: .profile2,
               residentName: "David Morris",
               categoryTitle: "Plumbing",
               reportText: "Leaking pipe under the sink.",
               time: Date().addingTimeInterval(-61200)),

    ServiceLog(userName: "Addison Bell",
               userImage: .profile2,
               residentName: "Chloe Rivera",
               categoryTitle: "Electrical",
               reportText: "Ceiling fan is not working.",
               time: Date().addingTimeInterval(-64800)),

    ServiceLog(userName: "Sofia Cooper",
               userImage: .profile2,
               residentName: "Ethan Reed",
               categoryTitle: "Cleaning",
               reportText: "Carpet needs shampooing.",
               time: Date().addingTimeInterval(-68400))
]

