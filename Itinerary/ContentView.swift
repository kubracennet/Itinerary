//
//  ContentView.swift
//  Itinerary
//
//  Created by Kübra Cennet Yavaşoğlu on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    HStack {
                     Image(systemName: "line.horizontal.3.decrease")
                            .resizable().frame(width: 24, height: 24)
                        Spacer()
                        Text("Los Angelas").font(.system(.headline, design: .rounded))
                        Text("California").fontWeight(.ultraLight)
                        Spacer()
                        Image("photo").resizable().aspectRatio(contentMode: .fill).frame(width: 36, height: 36).clipShape(Circle())
                    }
                    VStack (alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Hi").font(.largeTitle)
                            Text("Martin").font(.largeTitle).fontWeight(.heavy)
                        }
                        Text("Let's Discover a New Adventures").font(.subheadline).fontWeight(.light)
                    }
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(UIColor.systemIndigo))
                                .padding()
                            Text("Search Hotels, Taxi etc..").font(.footnote).padding()
                            Spacer()
                            Divider().frame(height: 24)
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable().frame(width: 8, height: 8)
                                .padding()
                        }.foregroundColor(Color.secondary.opacity(0.5)).background(Color.gray.opacity(0.1))
                            .cornerRadius(80).shadow(radius: 1)
                            .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
