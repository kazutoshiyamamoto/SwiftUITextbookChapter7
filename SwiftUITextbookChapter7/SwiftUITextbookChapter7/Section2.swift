//
//  Section2.swift
//  SwiftUITextbookChapter7
//
//  Created by home on 2020/06/06.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section2: View {
    @State var kingaku: String = ""
    @State var ninzu: String = ""
    
    var body: some View {
        VStack {
            Section2_NumberTextField(title: "金額", number: $kingaku)
            Section2_NumberTextField(title: "人数", number: $ninzu)
        }
    }
}

struct Section2_Previews: PreviewProvider {
    static var previews: some View {
        Section2()
    }
}
