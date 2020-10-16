//
//  ContentView.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/15/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject
    private var viewModel = SampleViewModel()
    
    private let sectionArr = ["Blah", "Blah", "Blah", "Blah",
                              "Blah", "Blah", "Blah", "Blah",
                              "Blah", "Blah", "Blah", "Blah"]
    
    var body: some View {
        VStack {
                Banner()
                    .animation(.easeInOut(duration: 0.5))
                    .offset(y: 0 - viewModel.tvOffset)
                    .frame(height: viewModel.shouldShowBanner ? 235 :
                            (235 - viewModel.tvOffset) < 0 ? 0 : 235 - viewModel.tvOffset)
            
            HeaderPicker(selected: $viewModel.selected)

            List {
                ForEach(sectionArr, id: \.self) {item in
                    Section(header: Text("Header")) {
                        ListCell()
                    }
                }
            }.scrollOffset($viewModel.tvOffset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
