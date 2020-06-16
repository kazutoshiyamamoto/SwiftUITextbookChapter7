//
//  Section3.swift
//  SwiftUITextbookChapter7
//
//  Created by home on 2020/06/16.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

class Stopwatch: ObservableObject {
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.counter += 1
        }
    }
    
    func stop() {
        timer.invalidate()
    }
    
    func reset() {
        timer.invalidate()
        counter = 0
    }
}
