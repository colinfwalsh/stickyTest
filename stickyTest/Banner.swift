//
//  Banner.swift
//  stickyTest
//
//  Created by Colin Walsh on 10/16/20.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.blue).frame(width: UIScreen.main.bounds.size.width, height: 235, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack {
                ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                    HStack(spacing: 10) {
                        Rectangle()
                            .foregroundColor(.purple)
                            .frame(width: 200, height: 100)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 200, height: 100)
                    }
                }
                ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                    HStack(spacing: 10) {
                        VStack {
                            Circle()
                                .fill(Color.red)
                                .frame(width: 50, height: 50)
                            Text("Text")
                        }
                        VStack {
                            Circle()
                                .fill(Color.red)
                                .frame(width: 50, height: 50)
                            Text("Text")
                        }
                        VStack {
                            Circle()
                                .fill(Color.red)
                                .frame(width: 50, height: 50)
                            Text("Text")
                        }
                    }
                }
            }
        }
    }
}

struct Banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}
