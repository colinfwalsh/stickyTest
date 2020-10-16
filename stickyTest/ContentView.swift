//
//  ContentView.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/15/20.
//

import SwiftUI
import Combine


class SampleViewModel: ObservableObject {
    @Published
    var selected = 0
    
    @Published
    var shouldShowBanner = true
    
    @Published
    var tvOffset: CGFloat = 0.0

    private var cancelBag = Set<AnyCancellable>()
    
    init() {
        
        $tvOffset
         .sink {self.shouldShowBanner = $0 <= 30}
         .store(in: &cancelBag)

    }
}

struct ContentView: View {
    
    @ObservedObject
    private var viewModel = SampleViewModel()
    
    private let sectionArr = ["Blah", "Blah", "Blah", "Blah", "Blah", "Blah", "Blah", "Blah", "Blah",
                              "Blah", "Blah", "Blah", "Blah"
    ]
    
    var body: some View {
        //ScrollView {
        VStack {
                Banner()
                    .animation(.easeInOut(duration: 0.5))
                    .offset(y: 0 - viewModel.tvOffset)
                    .frame(width: viewModel.shouldShowBanner ? UIScreen.main.bounds.width : 0,
                           height: viewModel.shouldShowBanner ? 235 : (235 - viewModel.tvOffset) < 0 ? 0 : 235 - viewModel.tvOffset,
                           alignment: .center)
            
            HeaderPicker(selected: $viewModel.selected)

            List {
                ForEach(self.sectionArr, id: \.self) {item in
                    Section(header: Text("Header")) {
                        VStack(alignment: .leading) {
                            Text("Title")
                            Text("Subtitle")
                        }
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
