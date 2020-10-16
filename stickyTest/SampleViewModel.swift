//
//  SampleViewModel.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/16/20.
//

import Foundation
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
