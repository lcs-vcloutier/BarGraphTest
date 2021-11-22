//
//  BarGraph.swift
//  BarGraphGestures
//
//  Created by Vincent Cloutier on 2021-11-22.
//

import SwiftUI

struct BarGraph: View {
    var downloads: [Download]
    var body: some View {

        HStack(spacing: 10) {
            ForEach(downloads) { download in
            
                VStack(spacing: 20) {
                    GeometryReader{ proxy in
                        let size = proxy.size
                        RoundedRectangle(cornerRadius: 6)
                            .fill(download.color)
                            .frame(height: (download.downloads / getMax()) * (size.height))
                            .frame(maxHeight: .infinity, alignment: .bottom)
                    }
                }
            }
            
        }
        .frame(height: 150)
    }
    // Get each download's height
    func getMax() -> CGFloat {
        let max = downloads.max { first, second in
            return second.downloads > first.downloads
        }
        return max?.downloads ?? 0
    }
}

