//
//  SwiftUIView.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/16/20.
//

import SwiftUI
import Combine

struct ListCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
            Text("Subtitle")
        }.frame(width: UIScreen.main.bounds.width,
                height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                alignment: .leading)
    }
}
