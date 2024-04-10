//
//  delete.swift
//  AirbnbClone
//
//  Created by Дарья Яцынюк on 03.04.2024.
//


import SwiftUI

struct ContentView: View {
    @State private var text = ""

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    TextEditor(text: $text)
                        .padding()
                    Spacer()

                    BottomToolbarContainer {
                        Button(action: {
                            // Handle button action
                        }) {
                            Image(systemName: "plus.circle.fill")
                        }

                        Spacer()

                        Button(action: {
                            // Handle button action
                        }) {
                            Image(systemName: "camera.fill")
                        }
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, maxHeight: 44)
                    .background(Color.white)
                }
            }
            .navigationBarTitle("Notes", displayMode: .inline)
        }
    }
}

struct BottomToolbarContainer<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        HStack {
            content
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
