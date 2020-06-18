//
//  Section4.swift
//  SwiftUITextbookChapter7
//
//  Created by home on 2020/06/18.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct Section4: View {
    @EnvironmentObject var shareData: ShareData
    @State var isModal: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text(shareData.yesNo ? "Yes" : "No")
                Text(String(repeating: "★", count: shareData.num))
                    .foregroundColor(shareData.yesNo ? .green : .gray)
            }.font(.title)
            
            Button(action: {
                self.isModal = true
            }) {
                Text("[ 設定の変更 ]")
                    .padding()
            }
            .sheet(isPresented: $isModal) {
                SettingView().environmentObject(self.shareData)
            }
        }
    }
}

struct Section4_Previews: PreviewProvider {
    static var previews: some View {
        Section4().environmentObject(ShareData())
    }
}
