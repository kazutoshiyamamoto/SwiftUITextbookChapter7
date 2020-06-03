//
//  ContentView.swift
//  SwiftUITextbookChapter7
//
//  Created by home on 2020/06/03.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // チェックの状態
    @State var isMyChecked1: Bool = false
    
    var body: some View {
        HStack {
            Text("担当者1のチェック")
            CheckMarkPerson(isChecked: $isMyChecked1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
