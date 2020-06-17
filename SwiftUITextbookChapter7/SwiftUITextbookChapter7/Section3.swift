//
//  Section3.swift
//  SwiftUITextbookChapter7
//
//  Created by home on 2020/06/17.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section3: View {
    @ObservedObject var stopwatch = Stopwatch()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.stopwatch.start()
                }) {
                    Image(systemName: "play")
                }.padding()
                
                Button(action: {
                    self.stopwatch.stop()
                }) {
                    Image(systemName: "pause")
                }.padding()
                
                Button(action: {
                    self.stopwatch.reset()
                }) {
                    Image(systemName: "backward.end")
                }.padding()
            }.frame(width: 200)
            Text("\(self.stopwatch.counter)")
        }.font(.largeTitle)
    }
}

struct Section3_Previews: PreviewProvider {
    static var previews: some View {
        Section3()
    }
}
