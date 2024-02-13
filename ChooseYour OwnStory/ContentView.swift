//
//  ContentView.swift
//  ChooseYour OwnStory
//
//  Created by Anil Caliskan on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

#Preview {
    ContentView()
}
