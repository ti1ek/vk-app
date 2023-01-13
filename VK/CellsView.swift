//
//  FriendCell.swift
//  VK
//
//  Created by Tilek Koszhanov on 1/13/23.
//

import SwiftUI

struct CellsView: View {
    var body: some View {
        VStack(spacing: 20) {
            FriendCell()
            GroupCell()
        }
    }
}

struct FriendCell: View {
    var body: some View {
        HStack {
            ImageBuilder {
                Image("friend")
            }
            VStack(alignment: .leading) {
                Text("Steve Jobs")
                    .bold()
                Text("New York")
                    .foregroundColor(.gray)
            }.padding(.leading, 5)
            Spacer()
        }
    }
}

struct GroupCell: View {
    var body: some View {
        HStack {
            ImageBuilder {
                Image("group")
            }
            VStack(alignment: .leading) {
                Text("Давай лучше дома посмотрим")
                    .bold()
                Text("Кино")
                    .foregroundColor(.gray)
            }.padding(.leading, 5)
            Spacer()
        }
    }
}

struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 60, height: 60)
            .cornerRadius(40)
    }
}

struct ImageBuilder: View {
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
        
        var body: some View { content
            .resizable()
            .modifier(ImageModifier())
            .padding(.leading, 30)
        }
    }

struct FriendCell_Previews: PreviewProvider {
    static var previews: some View {
        CellsView()
    }
}




