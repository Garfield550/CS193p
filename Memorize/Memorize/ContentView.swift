//
//  ContentView.swift
//  Memorize
//
//  Created by Garfield Lee on 7/29/21.
//

import SwiftUI

struct ContentView: View {
    @State var emojiCount = 6
    var emojis = ["😀", "😃", "😄", "😁", "😆", "😅", "😂", "🤣",
                  "🥲", "☺️", "😊", "😇", "🙂", "🙃", "😉", "😌",
                  "😍", "🥰", "😘", "😗", "😙", "😚", "😋", "😛",
                  "😝", "😜", "🤪", "🤨", "🧐", "🤓", "😎", "🥸",
                  "🤩", "🥳", "😏", "😒", "😞", "😔", "😟", "😕",
                  "🙁", "☹️", "😣", "😖", "😫", "😩", "🥺", "😢" ]

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(1/1, contentMode: .fill/*@END_MENU_TOKEN@*/)
                    }
                }
            }.foregroundColor(.pink)
            HStack {
                removeButton
                Spacer()
                addButton
            }.padding(.all).font(.largeTitle)
        }.padding(.horizontal)
    }

    var addButton: some View {
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
    var removeButton: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var content: String

    var body: some View {
        ZStack {
            let shape = Circle()
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}
