
//
//  Section2_NumberTextField.swift
//  SwiftUITextbookChapter7
//
//  Created by home on 2020/06/06.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section2_NumberTextField: View {
    var title: String
    @Binding var number: String
    
    var body: some View {
        HStack {
            Text(title + ":")
            
            TextField("0", text: $number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numbersAndPunctuation)
            
            if numCheck(number) {
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            } else {
                Image(systemName: "arrow.left")
                    .foregroundColor(.red)
            }
        }.frame(width: 150)
    }
    
    func numCheck(_ number: String) -> Bool {
        guard let num = Int(number) else {
            return false
        }
        return num > 0
    }
}

struct Section2_NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        Section2_NumberTextField(title: "テスト", number: .constant("123"))
    }
}
