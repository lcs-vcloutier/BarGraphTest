//
//  Home.swift
//  BarGraphGestures
//
//  Created by Vincent Cloutier on 2021-11-22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                
                // Header
                HStack(spacing: 15) {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2 )
                    }
                    Text("My Stats")
                        .font(.title2)
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("Profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                    }
                }
                .foregroundColor(.white)
                
                // Download Stats
                DownloadStats()
            }
            .padding(15)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BG").ignoresSafeArea())
        .preferredColorScheme(.dark)
    }
    @ViewBuilder
    func DownloadStats() -> some View {
        VStack(spacing:15) {
            HStack {
                VStack(alignment: .leading, spacing: 13) {
                    Text("Ads Expense")
                        .font(.title)
                        .fontWeight(.semibold)
                    Menu {
                        
                    } label: {
                        Label {
                            Image(systemName: "chevron.down")
                        } icon: {
                            Text("Last 7 Days")
                        }
                        .font(.callout)
                        .foregroundColor(.gray)

                        
                    }
                }
                Spacer()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
