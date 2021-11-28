//
//  BarGraph.swift
//  BarGraphGestures
//
//  Created by Vincent Cloutier on 2021-11-22.
//

import SwiftUI

struct BarGraph: View {
    var downloads: [Download]
    
    // Gesture Properties...
    @GestureState var isDragging: Bool = false
    @State var offset: CGFloat = 0
    
    //Current download to highlight
    @State var currentDownloadId: String = ""
    
    var body: some View {

        HStack(spacing: 10) {
            ForEach(downloads) { download in
            CardView(download: download)
            }
        }
        .frame(height: 150)
    }
    
    @ViewBuilder
    func CardView(download: Download) -> some View {
        VStack(spacing: 20) {
            GeometryReader{ proxy in
                let size = proxy.size
                RoundedRectangle(cornerRadius: 6)
                    .fill(download.color)
                    .opacity(isDragging ? (currentDownloadId == download.id ? 1 : 0.35) : 1)
                    .frame(height: (download.downloads / getMax()) * (size.height))
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
            Text(download.day)
                .font(.callout)
                .foregroundColor(currentDownloadId == download.id ? download.color : .gray)
        }
    }
     
    // Get each download's height
    func getMax() -> CGFloat {
        let max = downloads.max { first, second in
            return second.downloads > first.downloads
        }
        return max?.downloads ?? 0
    }
}

