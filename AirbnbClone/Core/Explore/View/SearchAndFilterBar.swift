//
//  SearchAndFilterBar.swift
//  AirbnbClone
//
//  Created by Дарья Яцынюк on 28.03.2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @Binding var location: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading) {
                Text(location.isEmpty ? "Where to?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text(location.isEmpty ? "Anywhere - Any week - Any guest" : "Any week - Add guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar(location: .constant("Miami"))
}
