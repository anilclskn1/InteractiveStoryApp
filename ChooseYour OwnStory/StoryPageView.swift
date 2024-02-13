//
//  StoryPageView.swift
//  ChooseYour OwnStory
//
//  Created by Anil Caliskan on 12.02.2024.
//

import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            ScrollView {
                Text(story[pageIndex].text)
            }
            //SwiftUI uses the id argument to tell the choices apart from each other. Because each choice has different text, you can use the text property to identify them.
            ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                //A NavigationLink needs two things: a destination and content to display. The destination of the navigation link is the page that the choice navigates to.
                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                    Text(choice.text)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
                
            }
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    StoryPageView(
    story: story, pageIndex: 0)
}
