//
//  Dowload.swift
//  BarGraphGestures
//
//  Created by Vincent Cloutier on 2021-11-22.
//

import SwiftUI

// Sample graph model
struct Download: Identifiable {
    var id = UUID().uuidString
    var downloads: CGFloat
    var day: String
    var color: Color
}

var weekDownloads: [Download] = [
    Download(downloads: 30, day: "S", color: Color("Purple")),
    Download(downloads: 31, day: "M", color: Color("Purple")),
    Download(downloads: 60, day: "T", color: Color("Green")),
    Download(downloads: 55, day: "W", color: Color("Green")),
    Download(downloads: 90, day: "T", color: Color("Purple")),
    Download(downloads: 30, day: "F", color: Color("Green")),
    Download(downloads: 10, day: "S", color: Color("Purple"))
] 

// Sample graph data
