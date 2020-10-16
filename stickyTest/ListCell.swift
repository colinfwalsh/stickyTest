//
//  SwiftUIView.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/16/20.
//

import SwiftUI
import Combine

struct ListCell: View {
    @ObservedObject
    var viewModel: ListCellViewModel
        
    var body: some View {
        VStack(alignment: .leading) {
            //Text(viewModel.titleText)
            //Text(viewModel.subtitleText)
        }
    }
}

class ListCellViewModel: ObservableObject {
    @Published
    var title: String
    
    @Published
    var subTitle: String
    
    init(title: String, subTitle: String) {
        self.title = title
        self.subTitle = subTitle
    }
}

