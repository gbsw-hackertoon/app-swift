//
//  WorkView.swift
//  hack_pj
//
//  Created by 박성민 on 1/9/24.
//

import SwiftUI

struct WorkView: View {
    var body: some View {
        VStack{
            Text("내 서재")
                .padding(.bottom,20)
            HStack{
                Text("내가 쓴작품")
                    .bold()
                    .font(.system(size: 20))
                Spacer()
            }.padding()
            
            Spacer()
        }
    }
}

#Preview {
    WorkView()
}
