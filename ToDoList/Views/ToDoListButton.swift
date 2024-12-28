//
//  ToDoListButton.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import SwiftUI

struct ToDoListButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
    }

    struct TLButton_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListButton(title: "Create", background: .blue) {
                // Action
            }
        }
    }
