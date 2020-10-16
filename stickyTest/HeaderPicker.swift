//
//  HeaderPicker.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/16/20.
//

import SwiftUI

struct HeaderPicker: View {
    @Binding
    var selected: Int
    
    var body: some View {
        Picker("Title", selection: $selected) {
            Text("Item").tag(0)
            Text("Second").tag(1)
            Text("Third").tag(2)
        }.pickerStyle(SegmentedPickerStyle())
    }
}
